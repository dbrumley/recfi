#include "llvm/IR/Module.h"
#ifndef ICFIPASS
#define ICFIPASS
/*
 * TODO: Comments
 */
using namespace llvm;

namespace cfi {

    class ICfiPass
    {

        public: 
            ICfiPass() {};
            ~ICfiPass() {};
            virtual void findAllTargets(){};
            virtual void generateDestIDs() {};
            virtual void generateCheckIDs() {};
            virtual void lowerChecksAndIDs() {};
            virtual std::string getStats() {return "stats: ICfiPass";};
    };
}
#endif
