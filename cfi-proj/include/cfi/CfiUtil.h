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

#include <set>

#include <iostream>
#include <fstream>
using namespace llvm;

#define CFI_INSERT_INTRINSIC "llvm.cfiid"
#define CFI_CHECK_TAR_INTRINSIC "llvm.cfichecktar"
#define CFI_CHECK_RET_INTRINSIC "llvm.cficheckret"
#define CFI_ABORT "cfi_abort"

#define MAX 0xFFFF

namespace cfi{

	//set types
	typedef std::set<Instruction *> InstSet;

	//helper map types
	typedef std::map<Instruction *, InstSet> InstDestMap;

	//id map types
	typedef std::map<Instruction *, int> InstIDMap;

	typedef std::map<Instruction *, std::set<int> > InstIDSetMap;

	typedef std::vector<std::string> ArgNames;
	typedef std::vector<llvm::Type*> ArgTypes;
	typedef std::vector<llvm::Value*> ArgVals;

    void print_dest_map(InstDestMap instDestMap);
    void print_ID_maps(InstIDMap callSiteIDs);
    void print_ID_check_maps(InstIDSetMap targetCheckIDs);

	class CFILowering {

        //cfi intrinsic functions, all are of the form:
        //@llvm.arm.cfiid(i32 dest_id)
        Function *cfiInsertID;
        Function *cfiCheckTarget;
        Function *cfiCheckReturn;

        Module *mod;

        Function *createCfiFunc(std::string funcName);

        void createAbort();
        
		public:
			CFILowering(Module &M);

			void insertIDs(InstIDMap instrIDs);
			void insertChecks(InstIDSetMap targetCheckIDs);
	};

    class CFILogger {

        std::ofstream outStream;

        public:
            CFILogger(const char* logfile);
            void log(std::string logstr);
            void endlog();
    };
}

#endif
