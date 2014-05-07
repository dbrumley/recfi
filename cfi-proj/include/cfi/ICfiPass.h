#ifndef CFI_ICFIPASS
#define CFI_ICFIPASS
#include "cfi/CfiUtil.h"
/*
 * TODO: Comments
 */

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
