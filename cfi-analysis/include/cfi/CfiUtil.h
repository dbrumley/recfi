//===- CFILowering.h - header file for InsertIDsAndChecks.cpp -------------===//
//
// Contains function declarations for inserting IDs and checks into llvm IR
//
//===----------------------------------------------------------------------===//

#ifndef CMU_CFI
#define CMU_CFI

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"

#include "dsa/DSGraph.h"
#include "dsa/CallTargets.h"
#include "dsa/DSCallGraph.h"

#include <set>
#include <iostream>
#include <fstream>

namespace cfi{

    #define CFI_INSERT_INTRINSIC "llvm.cfiid"
    #define CFI_CHECK_TAR_INTRINSIC "llvm.cfichecktar"
    #define CFI_CHECK_RET_INTRINSIC "llvm.cficheckret"
    #define CFI_ABORT "cfi_abort"
    #define MAX 0xFFFF

    typedef dsa::CallTargetFinder<EQTDDataStructures> CTF;

    //iterator types
    typedef std::list<CallSite>::iterator CallSiteIterator;
    typedef std::vector<const Function *>::iterator CallTargetIterator;

    //set types
    typedef std::set<Instruction *> InstSet;
    typedef std::set<BasicBlock *> BBSet;

    //map types
    typedef std::map<Instruction *, InstSet> InstDestMap;
    typedef std::map<Instruction *, int> InstIDMap;
    typedef std::map<Instruction *, std::set<int> > InstIDSetMap;

    //function signature types
    typedef std::vector<std::string> ArgNames;
    typedef std::vector<llvm::Type*> ArgTypes;
    typedef std::vector<llvm::Value*> ArgVals;

    /*
     * Levels of CFI precision
     */
    enum CfiLevel{
        TwoID,         /* "Two-Class CFI" */
        MultiMerge,    /* "Multi-Class CFI" */
        MultiList      /* ID with a white list for solving destination equivalence */
    };

    void addFunctionPointerWrappers(Module* mod);

    void print_dest_map(InstDestMap instDestMap, std::string tag);
    void print_ID_maps(InstIDMap callSiteIDs, std::string tag);
    void print_ID_check_maps(InstIDSetMap targetCheckIDs, std::string tag);

    /**
     * @brief class containing utility functions for 
     * inserting annotations into LLVM IR
     */
    class CFILowering {
        //cfi intrinsic functions, all are of the form:
        //@llvm.arm.cfiid(i32 dest_id)
        Function *cfiInsertID;
        Function *cfiCheckTarget;
        Function *cfiCheckReturn;

        //current module
        Module *mod;

        Function *createCfiFunc(std::string funcName);
        void createAbort();
        
	public:
	    CFILowering(Module &M);

	    void insertIDs(InstIDMap instrIDs, bool isRetTarget);
	    void insertChecks(InstIDSetMap targetCheckIDs);
    };
}

#endif
