//===- CFIUtil.cpp - Functions for inserting id and check inserting -------===//
//
// Contains functions for inserting IDs and checks into llvm IR as
// LLVM intrinsic functions
//
//===----------------------------------------------------------------------===//

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "cfi/CfiUtil.h"
#include "llvm/IR/Use.h"

using namespace llvm;

namespace cfi{

   /**
    * @brief a pointer to the AliasAnalysis.
    */
   AliasAnalysis *AA;

   /**
    * @brief given a type and a global variable to call this function creates a
    * function to call the global variable.
    *
    * @param mod
    * @param ft - type of the wrapper
    * @param gvar - the inner function that the wrapper should be calling.
    *
    * @return 
    */
   static Function* createWrapperFunction(Module* mod, FunctionType* ft, GlobalVariable* gvar)
   {
      Function* fn_wrap = Function::Create(ft, GlobalValue::ExternalLinkage, "__recfi_wrap", mod);
      BasicBlock* label_entry = BasicBlock::Create(mod->getContext(), "entry",fn_wrap,0);
      BasicBlock* label_exit = BasicBlock::Create(mod->getContext(), "exit",fn_wrap,0);

      Function::arg_iterator FB, FE;
      std::vector<Value *> args;

      //pass-through the args.
      for (FB = fn_wrap->arg_begin(), FE = fn_wrap->arg_end(); FB!= FE; FB++)
      {
         Value* v = &*FB;
         args.push_back(v);
      }

      LoadInst* ptr_gvar = new LoadInst(gvar, "", false, label_entry);
      CallInst* inner_call = CallInst::Create(ptr_gvar, args, "", label_entry);

      inner_call->setTailCall(false);
      inner_call->setIsNoInline();
      BranchInst::Create(label_exit, label_entry);
      
      //create a return inst depending on the return type.
      if (ft->getReturnType()->isVoidTy())
         ReturnInst::Create(mod->getContext(), label_exit);
      else
         ReturnInst::Create(mod->getContext(), inner_call,  label_exit);

      return fn_wrap;
   }

   /**
    * @brief updates the callinst with a call to the wrapper (that is created
    * here), and creates the instruction to store the argument in the global
    * variable (which is also created here).
    *
    * @param mod
    * @param CI - the callinst to be updated
    * @param t - The type of GlobalVariable
    * @param ft - The type of the wrapper
    * @param index - The index of the argument to be updated
    */
   static void createNewCallInst(Module* mod, CallInst* CI, PointerType* t, FunctionType* ft, int index)
   {
      //create global var
      GlobalVariable* gvar = new llvm::GlobalVariable(*mod,
            t,
            false,
            llvm::GlobalValue::ExternalLinkage,
            0,
            "cfi_fn_ptr");

      //assign null to the gvar
      ConstantPointerNull* nll = ConstantPointerNull::get(t);
      gvar->setInitializer(nll);
      
      //create the wrapper and the Instruction to assign the argument to the gvar 
      Function* fn_wrap = createWrapperFunction(mod, ft, gvar);
      new StoreInst(CI->getArgOperand(index), gvar, CI);
      Constant* ptr_wrap = ConstantExpr::getCast(Instruction::BitCast, fn_wrap, t);

      CI->setArgOperand(index, ptr_wrap);
   }

   /**
    * @brief Given a store instruction which aliases with a pointer passed to a
    * function, create a wrapped store instruction.
    *
    * @param mod
    * @param SI
    */
   static void createNewStoreFptrInst(Module* mod, StoreInst* SI)
   {
      Value* function = SI->getValueOperand();

      //test if we already got to this store.
      if (function->hasName() && 
            function->getName().str().find("__recfi_wrap") != std::string::npos)
         return;

      Type* ftype = function->getType();
      PointerType* dest_type = dyn_cast<PointerType>(ftype);
      Type* t = dest_type->getElementType();
      FunctionType* function_type = dyn_cast<FunctionType>(t);
      function_type->dump();
      assert(function_type);

      GlobalVariable* gvar = new llvm::GlobalVariable(*mod,
            dest_type,
            false,
            llvm::GlobalValue::ExternalLinkage,
            0,
            "cfi_indirect_fn_ptr");

      ConstantPointerNull* nll = ConstantPointerNull::get(dest_type);
      gvar->setInitializer(nll);

      Function* fn_wrap = createWrapperFunction(mod, function_type, gvar);
      Constant* ptr_wrap = ConstantExpr::getCast(Instruction::BitCast, fn_wrap, dest_type);
      new StoreInst(SI->getValueOperand(), gvar, SI);
      new StoreInst(ptr_wrap, SI->getPointerOperand(), SI);

      SI->eraseFromParent();
   }

   /**
    * @brief given a pointer arg to a function find other instructions in the
    * function that alias to the pointer, uses basic-aa, and replace them.
    *
    * @param mod
    * @param F
    * @param v
    */
   static void findAliasMatches(Module* mod, Function* F, Value* v)
   {
      Module::iterator MB, ME;

      Function::iterator FB, FE;
      for (FB = F->begin(), FE = F->end(); FB != FE; FB++)
      {
         BasicBlock::iterator BB, BE;
         for(BB = FB->begin(), BE = FB->end(); BB != BE; )
         {
            Instruction *I = BB++;
	    

            if (StoreInst* storeInst = dyn_cast<StoreInst>(I))
            {
               Value* ptr = storeInst->getPointerOperand();
               if (AA->alias(v,ptr) == AliasAnalysis::MustAlias)
               {
                  Value* dest = storeInst->getValueOperand();
                  if (Function* fptr = dyn_cast<Function>(dest))
                  {
                     createNewStoreFptrInst(mod, storeInst);
                  }                 
               }
            }
         }
      }

   }

   /**
    * @brief for a given CallInst, check that the function called is an external
    * one, if so find all pointer args that might have function pointers assigned
    * to them and wrap them up if they are pointers to internal functions.
    *
    * @param mod
    * @param F
    * @param CI
    */
   static void findFunctionPointerArgs(Module* mod, Function* F, CallInst* CI)
   {
      if (CI == NULL)
         return;

      unsigned num_args = CI->getNumArgOperands();
      unsigned i;

      for (i = 0; i < num_args; i++)
      {
         Value* arg = CI->getArgOperand(i);
         Type* arg_type = arg->getType();

         if (PointerType * PT = dyn_cast<PointerType>(arg_type)) 
         {
            findAliasMatches(mod, F, arg);
            Type* elem_type = PT->getElementType();
            if (FunctionType * FT = dyn_cast<FunctionType>(elem_type)) 
            {
               if (isa<ConstantPointerNull>(arg) || isa<ConstantExpr>(arg))
                  continue;

               Function *calledFunc = CI->getCalledFunction();

               if (Function *pointedFunction = dyn_cast<Function>(arg))
               { 
                  if (pointedFunction->isDeclaration())
                     continue;
               }

               if (calledFunc != NULL && calledFunc->isDeclaration())
               {
                  if (FT->isVarArg()) {
                     errs() << "Error: Function is variadic, cannot create wrapper\n";
                     exit(-1);
                  }

                  createNewCallInst(mod, CI, PT, FT, i);
               }
            }
         }
      }
   }

   /**
    * @brief finds all callsites with possible fn pointer args (direct or 
    * nested) and adds wrappers to them.
    *
    * @param mod
    */
   void addFunctionPointerWrappers(Module* mod)
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
                  findFunctionPointerArgs(mod, F, callInst);
               }
            }
         }
      }
   }

   /**
    * @brief creates a CFI intrinsic function
    *
    * @return Function pointer
    *
    * @arg funcName - name of llvm intrinsic function
    * @arg M - current module
    */
   Function *CFILowering::createCfiFunc(std::string funcName)
   {
      //create the cfiid_intrinsic function
      llvm::IRBuilder<> builder(mod->getContext());

      //function
      llvm::Type *retType = builder.getVoidTy();

      //function arg names
      ArgNames argNames;
      argNames.push_back("dest_id");

      //function arg types
      ArgTypes argTypes;
      argTypes.push_back(builder.getInt32Ty());

      //ex. call void @llvm.arm.cfiid(i32 dest_id)
      llvm::FunctionType *functType = llvm::FunctionType::get(retType, argTypes, false);
      return llvm::Function::Create(functType, llvm::Function::ExternalLinkage, funcName, mod);
   }

   /**
    * @brief create cfi_abort function as a while loop:
    *
    * void abort()
    * {while(1);}
    *
    * We do not call any other functions in abort, such as print,
    * because we do not want to introduce additional control flow
    * values that may be corrupted by the attacker.
    *
    * @return void
    */
   void CFILowering::createAbort()
   {
      //get cfi_abort function if exists, else create new func
      Constant *c = mod->getOrInsertFunction(CFI_ABORT,
            Type::getVoidTy(mod->getContext()),
            NULL);
      Function *abort = dyn_cast<Function>(c);
      abort->setCallingConv(CallingConv::C);

      //create entry block
      BasicBlock* entry = BasicBlock::Create(getGlobalContext(),
            "entry",
            abort);
      //create loop block
      BasicBlock* loop = BasicBlock::Create(getGlobalContext(),
            "loop",
            abort);
      //entry block will branch to loop block,
      //which will continue to branch to
      //loop block
      IRBuilder<> builder(entry);
      builder.CreateBr(loop);
      builder.SetInsertPoint(loop);
      builder.CreateBr(loop);
   }

   /**
    * @brief initializes CFILowering object by initializing cfi
    * intrinsic functions and creating the abort function
    *
    * @arg M - module
    */
   CFILowering::CFILowering(Module &M)
   {
      mod = &M;
      cfiInsertID = createCfiFunc(CFI_INSERT_INTRINSIC);
      cfiCheckTarget = createCfiFunc(CFI_CHECK_TAR_INTRINSIC);
      cfiCheckReturn = createCfiFunc(CFI_CHECK_RET_INTRINSIC);
      createAbort();
   }

   /**
    * @brief Inserts IDs into their respective sites
    *
    * @arg instrIDs - map of transfer targets to their IDs
    * @arg isRetTarget - flag to indicate if map is of ret targets
    * to IDs or jump targets to IDs
    *
    * @return void
    */
   void CFILowering::insertIDs(InstIDMap instrIDs, bool isRetTarget)
   {
      //iterate through target ID map 
      InstIDMap::iterator IB, IE;
      for (IB = instrIDs.begin(), IE = instrIDs.end();
            IB != IE; IB++)
      {
         llvm::IRBuilder<> builder(IB->first->getParent());
         Value *ID = llvm::ConstantInt::get(builder.getInt32Ty(),
               IB->second);

         BasicBlock::iterator II(IB->first);

         //ret targets are call sites, so insert ID after target
         //jump targets are basic block beginnings, so insert ID before
         if(isRetTarget)
            II++;

         builder.SetInsertPoint(II);
         assert (ID != NULL);
         builder.CreateCall(cfiInsertID, ID);
      }
   }

   /**
    * @brief Inserts checks into their respective sites
    *
    * @arg targetCheckIDs - map of transfer sites to their target
    * ID (or IDs for whitelisting policy)
    *
    * @return void
    */
   void CFILowering::insertChecks(InstIDSetMap targetCheckIDs)
   {
      //iterate through transfer site ID map
      InstIDSetMap::iterator IB, IE;
      for (IB = targetCheckIDs.begin(), IE = targetCheckIDs.end();
            IB != IE; IB++)
      {
         Instruction* transferInst = IB->first;
         std::set<int>::iterator setB, setE;
         for(setB = IB->second.begin(), setE = IB->second.end();
               setB != setE; setB++)
         {
            int intID = *setB;
            llvm::IRBuilder<> builder(transferInst->getParent());
            Value *ID = llvm::ConstantInt::get(builder.getInt32Ty(), 
                  intID);

            BasicBlock::iterator II(transferInst);

            //insert before current instruction
            builder.SetInsertPoint(II);
            if (dyn_cast<ReturnInst>(transferInst))
               builder.CreateCall(cfiCheckReturn, ID);
            else
               builder.CreateCall(cfiCheckTarget, ID);
         }
      }
   }

   /********** Debug Functions **********/

   /**
    * @brief prints out the destination map
    * 
    * @arg instDestMap - map of transfer sites to their targets
    * @arg tag - name of the map to print
    *
    * @return void
    */
   void print_dest_map(InstDestMap instDestMap, std::string tag)
   {
      errs() << tag << "\n";

      InstDestMap::iterator DB, DE;
      for (DB = instDestMap.begin(), DE = instDestMap.end(); 
            DB != DE; DB++)
      {
         errs() << "\tInstruction: ";
         DB->first->dump();

         errs() << "\tTargets:\n";
         InstSet::iterator SB, SE;
         for (SB = DB->second.begin(), SE = DB->second.end();
               SB != SE; SB++)
         {
            Instruction *B = *SB;
            errs() << "\t\t";
            B->dump();
         }
         errs() << "\n";
      }
   }

   /**
    * @brief prints out the target ID map
    * 
    * @arg transferIDs - map of transfer targets to their IDs
    * @arg tag - name of the map to print
    *
    * @return void
    */
   void print_ID_maps(InstIDMap targetIDs, std::string tag)
   {
      errs() << "\n" << tag << "\n";

      InstIDMap::iterator IB, IE;
      for (IB = targetIDs.begin(), IE = targetIDs.end();
            IB != IE; IB++)
      {
         errs() << "\tTarget Instr: ";
         IB->first->dump();
         errs() << "\t\tID = " << IB->second << "\n";
      }
   }

   /**
    * @brief prints out the trasnfer site ID map
    * 
    * @arg targetCheckIDs - map of transfer sites to their IDs
    * @arg tag - name of the map to print
    *
    * @return void
    */
   void print_ID_check_maps(InstIDSetMap targetCheckIDs, std::string tag)
   {
      errs() << "\n" << tag << "\n";

      InstIDSetMap::iterator IB, IE;
      for (IB = targetCheckIDs.begin(), IE = targetCheckIDs.end();
            IB != IE; IB++)
      {
         errs() << "\tTransfer Instr: ";
         IB->first->dump();
         std::set<int>::iterator setB, setE;
         for(setB = IB->second.begin(), setE = IB->second.end();
               setB != setE; setB++)
         {
            int intID = *setB;
            errs() << "\t\tTarget ID = " << intID << "\n";
         }
      }
   }
}
