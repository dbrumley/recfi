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

            InstSet jmpSites; //all places that need a jmpID check
            InstSet jmpTars; //all places that need a jmpID inserted

            InstSet retSites; // "" retID check
            InstSet retTars; // retID inserted

            InstIDMap jmpMap;
            InstIDMap retMap;
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
    };
}
#endif
