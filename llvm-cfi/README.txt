After updating autoconf/configure.ac, regenerate the configure script with these commands. (You must be using Autoconf version 2.59 or later and your aclocal version should be 1.9 or later.)

    % cd autoconf
    % ./AutoRegen.sh

Run configure in the directory in which you want to place object code. Use the following options to tell your project where it can find LLVM:

--with-llvmsrc=<directory>

    Tell your project where the LLVM source tree is located.
--with-llvmobj=<directory>

    Tell your project where the LLVM object tree is located.
--prefix=<directory>

    Tell your project where it should get installed.


