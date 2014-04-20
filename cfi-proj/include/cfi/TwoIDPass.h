#include "llvm/IR/Module.h"
#include "cfi/ICfiPass.h"

using namespace llvm;

namespace cfi {

    class TwoIDPass : public ICfiPass
    {
            Module* mod;
            bool debug;

            int jmpID;
            int retID;

            InstSet jmpSites; //all places that need a jmpID check
            InstSet jmpTars; //all places that need a jmpID inserted
            InstSet retSites; // "" retID check
            InstSet retTars; // retID inserted

            InstDestMap destMap;
            InstIDMap idMap;
            InstIDSetMap checkMap;

        
            BBSet findIndTargets(Function &F);

        public: 
            TwoIDPass(Module &M, bool debug);
            ~TwoIDPass();
            void findAllTargets(CTF &ctf);
            void generateDestIDs();
            void generateCheckIDs();
            void lowerChecksAndIDs();
            std::string getStats();
    };
}
