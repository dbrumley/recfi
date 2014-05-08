/* pathdef.c */
/* This file is automatically created by Makefile
 * DO NOT EDIT!  Change Makefile only. */
#include "vim.h"
char_u *default_vim_dir = (char_u *)"/usr/local/share/vim";
char_u *default_vimruntime_dir = (char_u *)"";
char_u *all_cflags = (char_u *)"clang -c -I. -Iproto -DHAVE_CONFIG_H   -I/usr/local/include  -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1 -emit-llvm       ";
char_u *all_lflags = (char_u *)"clang   -L/usr/local/lib -Wl,--as-needed -o vim        -lm -ltinfo -lnsl  -ldl          ";
char_u *compiled_user = (char_u *)"lynn";
char_u *compiled_sys = (char_u *)"QemuCFI2";
