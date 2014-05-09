//===- ICfiPass.h - Cfi pass interface ------------------------------------===//
//
// ICfiPass is the interface that all cfi policy objects must inherit from.
// Virtual functions must be implemented in the cfi policy object.
//
//===----------------------------------------------------------------------===//

#ifndef CFI_ICFIPASS
#define CFI_ICFIPASS

#include "cfi/CfiUtil.h"

namespace cfi {

    class ICfiPass
    {
        public: 
        ICfiPass() {};
        ~ICfiPass() {};
        virtual void findAllTargets(CTF &ctf);
        virtual void generateDestIDs() {};
        virtual void generateCheckIDs() {};
        virtual void lowerChecksAndIDs() {};
        virtual std::string getStats() {return "stats: ICfiPass";};
        virtual void print(){};
    };
}

#endif
