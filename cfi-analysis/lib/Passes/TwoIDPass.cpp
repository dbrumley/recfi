//===- TwoIDPass.cpp - Implementation of Two-Class CFI policy -------------===//
//
// This pass instruments LLVM IR with the Two-Class CFI Policy. It 
// inherits from ICfiPass.
//
// The instrumented code should follow these rules:
// 1. every indirect call or branch can target every function or
//    indirectly targetable basic block
// 2. every return can target every call site
//
//===----------------------------------------------------------------------===//

#include "cfi/ICfiPass.h"
#include "cfi/TwoIDPass.h"
#include <sstream>

using namespace llvm;

namespace cfi {

    /**
     * @brief initializes the Two-Class CFI pass
     * 
     * @arg M - current module
     */
    TwoIDPass::TwoIDPass(Module &M) 
    {
        mod = &M;
        this->numFunPointers = 0;
    }
    
    Function* TwoIDPass::createWrapperFunction(FunctionType* ft, GlobalVariable* gvar)
    {
       Function* fn_wrap = Function::Create(ft, GlobalValue::ExternalLinkage, "wrap", mod);
       BasicBlock* label_entry = BasicBlock::Create(mod->getContext(), "entry",fn_wrap,0);
       BasicBlock* label_exit = BasicBlock::Create(mod->getContext(), "exit",fn_wrap,0);

       LoadInst* ptr_gvar = new LoadInst(gvar, "", false, label_entry);
       CallInst* inner_call = CallInst::Create(ptr_gvar, "", label_entry);
       inner_call->setTailCall(false);
       inner_call->setIsNoInline();
       BranchInst::Create(label_exit, label_entry);
       ReturnInst* r = ReturnInst::Create(mod->getContext(),  label_exit);
       
       return fn_wrap;
    }

    void TwoIDPass::createNewCallInst(CallInst* CI, PointerType* t, FunctionType* ft, int index)
    {
       //create global var
       GlobalVariable* gvar = new llvm::GlobalVariable(*mod,
                         t,
                         false,
                         llvm::GlobalValue::ExternalLinkage,
                         0,
                         "rr");
       ConstantPointerNull* nll = ConstantPointerNull::get(t);
       gvar->setInitializer(nll);
       Function* fn_wrap = createWrapperFunction(ft, gvar);
       StoreInst* store = new StoreInst(CI->getArgOperand(index), gvar, CI);
       Constant* ptr_wrap = ConstantExpr::getCast(Instruction::BitCast, fn_wrap, t);
       //LoadInst* ptr_wrap = new LoadInst(fn_wrap, "", false, CI);
       CI->setArgOperand(index, ptr_wrap);
    }

    void TwoIDPass::findFunctionPointerArgs(CallInst* CI)
    {
       if (CI == NULL)
          return;

       unsigned num_args = CI->getNumArgOperands();
       unsigned i, j;
       unsigned num_params;
       

       for (i = 0; i < num_args; i++)
       {
          Type* arg_type = CI->getArgOperand(i)->getType();
          
          if (PointerType * PT = dyn_cast<PointerType>(arg_type)) 
          {
             Type* elem_type = PT->getElementType();
             if (FunctionType * FT = dyn_cast<FunctionType>(elem_type)) 
             {
                Function *calledFunc = CI->getCalledFunction();
                if (calledFunc != NULL && calledFunc->isDeclaration())
                {
                   
                   errs() << "Function name: " << calledFunc->getName() << "\n";
                   if (FT->isVarArg()) {
                       errs() << "Error: Function is variadic, cannot create wrapper\n";
                       continue;
                   }
                   num_params = FT->getNumParams();
                   
                   errs() << num_params << " parameters\n";
                   errs() << "Arg types: ";
                   for (j = 0; j < num_params; j++) {
                       // We must redeclare the string and ostream upon each loop iteration to guarantee
                       // it flushes properly
                       std::string type_str;
                       llvm::raw_string_ostream rso(type_str);
                       FT->getParamType(j)->print(rso);
                       errs() << rso.str() << ", ";
                   }
                   errs() << "\n";
                   std::string type_str;
                   llvm::raw_string_ostream rso(type_str);
                   FT->getReturnType()->print(rso);
                   errs() << "Return type: " << rso.str() << "\n";
                   numFunPointers++;

                   // TODO: functions with arguments -- skip now to avoid error on compilation
                   if (num_params == 0) {
                       createNewCallInst(CI, PT, FT, i);
                   }
                   else {
                       errs() << "Error: Function contains multiple args, wrapper not created\n";
                   }
                }
             }
          }
       }
    }

    /**
     * @brief finds all transfer sites and targets and populates 
     * jmpSites, jmpTars, retSites, retTars
     *
     * @arg ctf - call target finder, provided by DSA,
     * should be null for this pass
     *
     * @return void
     */
    void TwoIDPass::findAllTargets(CTF &ctf)
    {
        Module::iterator MB, ME;
        //iterate through functions in module
        for (MB = mod->begin(), ME = mod->end(); MB != ME; MB++)
        {
            Function *F = &*MB;

            //iterate through basic blocks in function
            Function::iterator FB, FE;
            for (FB = F->begin(), FE = F->end(); FB != FE; FB++)
            {
                BasicBlock::iterator BB, BE;
                for(BB = FB->begin(), BE = FB->end(); BB != BE; BB++)
                {
                    Instruction *I = &*BB;

                    //found: call site
                    if (CallInst* callInst = dyn_cast<CallInst>(I))
                    {
                        //TODO: move this once design finalized.
                        
                        findFunctionPointerArgs(callInst);

                        Function *calledFunc = callInst->getCalledFunction();
                        //found: indirect call site
                        if (calledFunc == NULL)
                        {
                            jmpSites.insert(I);
                        }
                        else 
                        {
                            if (calledFunc->isIntrinsic() || 
                                calledFunc->isDeclaration())
                                continue;
                        }
                        //call sites are return targets (call or indirect call)
                        retTars.insert(I);
                    }
                    //found: indirect branch site
                    else if (dyn_cast<IndirectBrInst>(I))
                    {
                        jmpSites.insert(I);
                    }
                    //found: return site
                    else if (dyn_cast<ReturnInst>(I))
                    {
                        if (F->getName() != "main" && F->getName() != "wrap")
                        {
                            retSites.insert(I);
                        }
                    }
                }
            }

            if (F->isDeclaration())
                continue;

            //find all indirect call and branch targets (basic blocks)
            BBSet indTargets = findIndTargets(*F);

            //for all targets in indTargets, add first instruction of
            //basic block to jmpTars
            BBSet::iterator BB, BE;
            for (BB = indTargets.begin(), BE = indTargets.end();
                    BB != BE; BB++)
            {
                BasicBlock::iterator II = (*BB)->begin();
                jmpTars.insert(II);
            }
        }
    }

    /**
     * @brief finds all indirect targets in given function
     *
     * @arg F - function
     *
     * @return set of indirectly targetable basic blocks,
     * including entry block, of given function
     */
    BBSet TwoIDPass::findIndTargets(Function &F)
    {
        BBSet indTargets;
        if (F.getName() != "main")
            indTargets.insert(&F.getEntryBlock());

        //iterate over basic blocks in function
        Function::iterator FB, FE;
        for (FB = F.begin(), FE = F.end(); FB != FE; FB++)
        {
            BasicBlock *B = &*FB;

            //check if basic block ends with indirect branch
            //Future: add other checks: exceptions, longjumps, trampolines?
            if (TerminatorInst *TI = B->getTerminator())
            {
                if (IndirectBrInst *IBI = dyn_cast<IndirectBrInst>(TI))
                {
                    //add all possible successors to indBrDestMap
                    int n = IBI->getNumSuccessors();
                    for (int j = 0; j < n; j++)
                    {
                        indTargets.insert(IBI->getSuccessor(j));
                    }
                }
            }
        }
        return indTargets;
    }

    /**
     * @brief generate target IDs, populates jmpMap and retMap
     *
     * @return void
     */ 
    void TwoIDPass::generateDestIDs() 
    {
        InstSet::iterator IB, IE;
     
        //make sure ID is smaller than MAX
        jmpID = rand() % MAX;
        for (IB = jmpTars.begin(), IE = jmpTars.end(); IB != IE; IB++)
        {
            Instruction* K = *IB;
            jmpMap[K] = jmpID;
        }

        //ensure two IDs are unique
        do {
            retID = rand() % MAX;
        } while (retID == jmpID); 

        for (IB = retTars.begin(), IE = retTars.end(); IB != IE; IB++)
        {
            Instruction* K = *IB;
            retMap[K] = retID;
        }
    }

    /**
     * @brief generate transfer site check IDs, populates jmpCheckMap
     * and retCheckMap
     *
     * @return void
     */ 
    void TwoIDPass::generateCheckIDs() 
    {
        InstSet::iterator IB, IE;
        
        for (IB = jmpSites.begin(), IE = jmpSites.end(); IB != IE; IB++)
        {
            Instruction* K = *IB;
            std::set<int> *idset = &jmpCheckMap[K];
            if (idset->find(jmpID) != idset->end()) // idset.contains(ID)
                continue;
            else
                idset->insert(jmpID);
        }

        for (IB = retSites.begin(), IE = retSites.end(); IB != IE; IB++)
        {
            Instruction* K = *IB;
            std::set<int> *idset = &retCheckMap[K];
            if (idset->find(retID) != idset->end()) // idset.contains(ID)
                continue;
            else
                idset->insert(retID);
        }
    }

    /**
     * @brief insert IDs and checks into IR
     *
     * @return void
     */
    void TwoIDPass::lowerChecksAndIDs() 
    {
        CFILowering cfil = CFILowering(*mod);
        cfil.insertIDs(jmpMap, false);
        cfil.insertIDs(retMap, true);
        cfil.insertChecks(jmpCheckMap);  
        cfil.insertChecks(retCheckMap); 
    }

    /**
     * @brief get statistics for this pass
     *
     * @return string representation of stats
     */
    std::string TwoIDPass::getStats() 
    {
        int num_sites = 0;
        int cumulative_targets = 0;
        
        float avg_tars  = 0.0;
        int min_tars = 0;
        int max_tars  = 0;

        //iterate over monitor code sites
        InstIDSetMap::iterator IB, IE;
        for (IB = jmpCheckMap.begin(), IE = jmpCheckMap.end();
             IB != IE; IB++)
        {
            num_sites++;
            int num_tars = jmpTars.size();
            
            min_tars = min_tars == 0 ? num_tars : fmin(min_tars, num_tars);
            max_tars = fmax(max_tars, num_tars);
            cumulative_targets += num_tars;
        }

        for (IB = retCheckMap.begin(), IE = retCheckMap.end();
             IB != IE; IB++)
        {
            num_sites++;
            int num_tars = retTars.size();
            
            min_tars = min_tars == 0 ? num_tars : fmin(min_tars, num_tars);
            max_tars = fmax(max_tars, num_tars);
            cumulative_targets += num_tars;
        }
        
        avg_tars = float(cumulative_targets)/float(num_sites);

        std::ostringstream resultStream;

        resultStream << "Two ID Stats:\n";
        resultStream << "\tnum_sites = " << num_sites << "\n";
        resultStream << "\tcumulative_targets = " << cumulative_targets << "\n";
        resultStream << "\tTargets Per Callsite:\n"; 
        resultStream << "\t\tavg = " << avg_tars << "\n";
        resultStream << "\t\tmin = " << min_tars << "\n";
        resultStream << "\t\tmax = " << max_tars << "\n";
        
        resultStream << "\t\tnumber of function pointer args: " << numFunPointers << "\n"; 

        return resultStream.str();
    }

    /**
     * @brief prints debug info for this pass
     *
     * @return void
     */
    void TwoIDPass::print()
    {
        print_ID_maps(jmpMap, "jmpMap");
        print_ID_maps(retMap, "retMap");
        print_ID_check_maps(jmpCheckMap, "jmpCheckMap");
        print_ID_check_maps(retCheckMap, "retCheckMap");
    }
}
