//===- CfiPass.cpp - inserts CFI checks based on control flow graph ----===//
//
// This file inserts IDs and checks for a CFI implementation based on the
// control flow graphs and the call graph of a module.
//
// TODO: Insert Comments
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "cfi-multi-wl"

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "dsa/CallTargets.h"
#include "dsa/DSGraph.h"
#include "dsa/DSCallGraph.h"
#include "CFILowering.h"

#include "llvm/Analysis/AliasAnalysis.h"

using namespace llvm;

namespace cfi {
	
	/*
	 * Levels of CFI precision
	 */
	enum CfiLevel{
		TwoId,          /* Abadi's basic "Two-ID CFI" */
		MultiSimple,    /* Abadi's main "Multi-ID CFI" */
		MultiPlus,      /* Multi-ID with a white list for solving destination equivalence */
		MultiClone      /* Multi-ID with cloning for context sensitivity */
	};

	/*
	 * Command-line flag for the level of CFI precision
	 */
	cl::opt<CfiLevel> PrecisionLevel(cl::desc("Choose level of CFI precision:"),
			cl::values(
				clEnumValN(TwoId, "two", "No optimizations, enable debugging"),
				clEnumValN(MultiSimple, "multi", "No optimizations, enable debugging"),
				clEnumValN(MultiPlus, "plus", "No optimizations, enable debugging"),
				clEnumValN(MultiClone, "clone", "No optimizations, enable debugging"),
				clEnumValEnd));

	/*
	 * Command-line flag for printing precision statistics
	 */
	cl::opt<bool> PrintPrecStats("s", cl::desc("Print precision statistics"));

	/*
	 * Command-line flag for printing debug
	 */
	cl::opt<bool> Debug("d", cl::desc("Useful for debugging"));


	/**
	 * @brief CfiPass - module pass on the llvm IR that inserts cfi
	 * related information as llvm intrinsic functions
	 */
	struct CfiPass : public ModulePass {
		static char ID;
		CfiPass() : ModulePass(ID) {}


		virtual void getAnalysisUsage(AnalysisUsage &AU) const {
			AU.addRequired<EquivBUDataStructures>();
			AU.addRequired<AliasAnalysis>();
			AU.addRequired<CTF>();
		}

		InstDestMap findIndBrTargets(Module& M)
		{
			InstDestMap instDestMap;

			Module::iterator MB, ME;
			for (MB = M.begin(), ME = M.end(); MB != ME; MB++)
			{
				Function *F = &*MB;
				//for all basic blocks in function
				Function::iterator FB, FE;
				for (FB = F->begin(), FE = F->end(); FB != FE; FB++)
				{
					BasicBlock *B = &*FB;

					//check if basic block ends with indirect branch 
					//(TODO add other checks: exceptions, longjumps, trampolines?)
					if (TerminatorInst *TI = B->getTerminator())
					{
						if (IndirectBrInst *IBI = dyn_cast<IndirectBrInst>(TI))
						{
							//add all possible successors to indBrDestMap
							int n = IBI->getNumSuccessors();
							for (int j = 0; j < n; j++)
							{
								BasicBlock *destBlock = IBI->getSuccessor(j);
								BasicBlock::iterator destBlockStart = destBlock->begin();
								Instruction *destInstr = &*destBlockStart;
								instDestMap[IBI].insert(destInstr);
							}
						}
					}
				}
			}

			return instDestMap;
		}

		/**
		 * @brief Find all indirect call targets and add them to instDestMap,
		 * and find all return targets and add them to retTargets
		 *
		 * @return void
		 */
		void findIndCallAndRetTargets(InstDestMap& instDestMap)
		{
			//do dsa call target analysis
			CTF *ctf = &getAnalysis<CTF>();

			//for all call sites
			CallSiteIterator CB, CE;
			for (CB = ctf->cs_begin(), CE = ctf->cs_end(); CB != CE; CB++)
			{
				CallSite cs = *CB;
				Instruction *I = cs.getInstruction();

				//only consider calls that have targets
				if (ctf->begin(cs) != ctf->end(cs))
				{
					//for all call site targets
					CallTargetIterator FB, FE;
					for (FB = ctf->begin(cs), FE = ctf->end(cs); FB != FE; FB++)
					{
						const Function *F = *FB;

						if (F->isIntrinsic())
						{
							//errs() << "Skipping intrinsic: " << F->getName()  << "\n";
							continue;
						}
						if( F->getBasicBlockList().empty() )
						{
							//errs() << "Skipping declaration: " << F->getName()  << "\n";
							continue;
						}

						//add indirect call targets to indCallDestMap
						if (!cs.getCalledFunction())
						{
							//function that is declaration only
							if (F->isDeclaration())
							{
								errs() << "SuperGraphError: "
									<< "Indirect function "
									<< I->getParent()->getName() << " "
									<< "calls declaration only target "
									<< F->getName() << "; cannot insert ID "
									<< "before declaration only targets\n";
								continue;
							}

							BasicBlock *destBlock = const_cast<BasicBlock *>
								(&F->getEntryBlock());
							BasicBlock::iterator destBlockStart = destBlock->begin();
							Instruction *destInstr = &*destBlockStart;
							instDestMap[I].insert(destInstr);
						}

						//Find all returns in this function
						Function::iterator BB, BE;
						Function* ncF = const_cast<Function*>(F);
						for (BB = ncF->begin(), BE = ncF->end(); BB != BE; BB++)
						{
							BasicBlock *B = &*BB;

							//check if basic block ends with return
							if (TerminatorInst *TI = B->getTerminator())
							{
								if (ReturnInst *RI = dyn_cast<ReturnInst>(TI))
								{
									instDestMap[RI].insert(I);
								}
							}
						}

					}
				}
			}
		}

		InstIDMap genUniqueTargetIDs(InstDestMap& tarmap)
		{
			InstIDMap idmap;

			InstSet visitedSet;
			InstDestMap::iterator MB, ME;
			/* for each callsite */
			for (MB = tarmap.begin(), ME = tarmap.end(); MB != ME; MB++)
			{
				InstSet mset = MB->second;
				InstSet::iterator LB, LE;
				/* for each target */
				for (LB = mset.begin(), LE = mset.end(); LB != LE; LB++)
				{
					Instruction *inst = *LB;
					visitedSet.insert(inst);
				}
			}
			//generate ID for each set in setList, then add each Instr
			//and their ID to idmap
			InstSet::iterator LB, LE;
			for (LB = visitedSet.begin(), LE = visitedSet.end(); LB != LE; LB++)
			{
				int ID = rand() % MAX;
				Instruction* K = *LB;
				idmap[K] = ID;
			}
			return idmap;
		}

		/**
		 * @brief generates a map of constraint check sites and the ID to be 
		 * checked against
		 */
		InstIDSetMap generateCheckIDs(InstDestMap& tarmap,
				InstIDMap& idmap)

		{
			InstIDSetMap checkmap;
			InstDestMap::iterator MB, ME;
			for (MB = tarmap.begin(), ME = tarmap.end(); MB != ME; MB++)
			{
				//get the first target of the target set; ID of all targets
				//in set is same (there should always be an element in set)
				InstSet::iterator SB, SE;
				for (SB = MB->second.begin(), SE = MB->second.end();
						SB != SE; SB++)
				{
					Instruction *B = *SB;
					int ID = idmap[B];
					//map check site to target set ID
					checkmap[MB->first].insert(ID);
				}
			}
			return checkmap;
		}

		/**
		 * @brief find all indirect call and branch targets, then insert
		 * IDs and checks at corresponding locations for a context sensitive
		 * CFI implementation
		 *
		 * @arg M - module reference
		 */
		virtual bool runOnModule(Module &M) 
		{  
			errs() << "/========================================================================/\n\n";

			srand(time(NULL));

			// find all indirect transfer sites and their destinations
			InstDestMap instDestMap = findIndBrTargets(M);
			findIndCallAndRetTargets(instDestMap);
			//print_dest_map(instDestMap);

			// assign an ID to each destination
			InstIDMap instrIDs = genUniqueTargetIDs(instDestMap); 
			//print_ID_maps(instrIDs);

			// map each transfer site to a set of destination IDs
			InstIDSetMap targetCheckIDs = generateCheckIDs(instDestMap, instrIDs);
			//print_ID_check_maps(targetCheckIDs);

			// insert IDs and checks into IR as instrinsics
			cfi::CFILowering cfil = cfi::CFILowering(M);
			cfil.insertChecks(targetCheckIDs);
			cfil.insertIDs(instrIDs);

			errs() << "/========================================================================/\n\n";
			return false;
		}
	};
}

char cfi::CfiPass::ID = 0;
static RegisterPass<cfi::CfiPass> X("cfi", "CFI pass, multi-id with whitelisting)");
