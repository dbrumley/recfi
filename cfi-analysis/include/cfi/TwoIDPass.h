//===- TwoIDPass.h - header file for TwoIDPass.cpp  -----------------------===//
//
// Contains function declarations for TwoIDPass.cpp
//
//===----------------------------------------------------------------------===//

#ifndef CFI_TWOIDPASS
#define CFI_TWOIDPASS

#include "llvm/IR/Module.h"
#include "cfi/ICfiPass.h"

namespace cfi {

   class TwoIDPass : public ICfiPass
   {
      Module* mod;

      int jmpID;
      int retID;

      unsigned numFunPointers;

      InstSet jmpSites; // all places that need a jmpID check
      InstSet jmpTars;  // all places that need a jmpID inserted

      InstSet retSites; // "" retID check
      InstSet retTars;  // retID inserted

      //maps of transfer targets to IDs
      InstIDMap jmpMap;
      InstIDMap retMap;

      //maps of transfer sites to IDs
      InstIDSetMap retCheckMap;
      InstIDSetMap jmpCheckMap;

      BBSet findIndTargets(Function &F);

      public: 
      TwoIDPass(Module &M);
      ~TwoIDPass();
      void findAllTargets(CTF &ctf);
      void generateDestIDs();
      void generateCheckIDs();
      void lowerChecksAndIDs();
      std::string getStats();
      void print();
      
      //TODO:will be moved to its own pass once the design is finalized
      //(rohanseh)
      void findFunctionPointerArgs(CallInst* CI);
   };
}

#endif
