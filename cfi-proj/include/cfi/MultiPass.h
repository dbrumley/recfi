#include "ICfiPass.h"
#include "CfiUtil.h"
#ifndef MULTIPASS
#define MULTIPASS


using namespace llvm;

namespace cfi {

class MultiPass : public ICfiPass
{
    protected:
        Module* mod;
        bool debug;

        InstDestMap destMap;
        InstIDMap idMap;
        InstIDSetMap checkMap;

    public: 
        MultiPass(Module &M, bool debug_flag);
        ~MultiPass();
        void findAllTargets(CTF &ctf);
        virtual void generateDestIDs();
        void generateCheckIDs();
        void lowerChecksAndIDs();
        virtual std::string getStats();
};
}
#endif
