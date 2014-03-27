/* cfi_main.cpp
 *
 * Entry point for our cfi engine; takes as user input files to be compiled and
 * generates a cfi hardened binary.
 */

#include <string>

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <ctype.h>

void print_usage()
{
  printf("\nUsage: cfi_main <options> [files]\n");
  printf("\n");
  printf("Options:\n");
  printf("-h - prints this message\n");
  printf("-m - target architecture, to be passed to llc\n");
  printf("-o - outfile\n");
  printf("<to be completed....>\n\n");
}

/*
 * parses input options and gets files to be compiled
 */
int main(int argc, char *argv[])
{
  using namespace std;

  int c;

  string arch = "arm"; //default arm
  string out = "a.out"; //default outfile

  //parse options
  while ((c = getopt(argc, argv, "hm:o:")) != -1)
  {
    switch (c)
    {
      case 'h':
        print_usage();
	return 0;
      case 'm':
        arch = string(optarg);
	break;
      case 'o':
        out = string(optarg);
	break;
      case '?':
        if (optopt == 'm' || optopt == 'o')
          fprintf(stderr, "option -%c requires an argument\n", optopt); 
        else if (isprint(optopt))
          fprintf(stderr, "unknown option -%c\n", optopt);
        return 0;
    }
  }

  //no input files
  if (argc < 2 || argc <= optind)
  {
    print_usage();
    return 0;
  }

  char **files = argv + optind;
  
  //concat files into one string
  int i, end = argc - optind;
  string s_files;
  for (i = 0; i < end; i++)
  {
    s_files += string(files[i]) + " ";
  }

  //TODO:
  //1. invoke llvm loader to combine all input files into one temporary file
  //2. invoke llvm-gcc to compile combined file with -emit-llvm -S -O3 flags
  //3. get resulting file and do llvm passes (our passes) to
  //    1) parse llvm using llvm api
  //    2) generate call graph/control flow graph
  //       - possibly need alias analysis for func pointers
  //    3) annotate graph
  //4. invoke llvm-as (modified by us) to convert .s file into .ll (llvm byte code file)
  //5. invoke llc to generate binary for target architecture

  string s_llvm_gcc = "llvm-gcc -emit-llvm -S -O3 -o llvm.temp.file.s " + s_files;
  printf("executing command: %s\n", s_llvm_gcc.c_str());
  system(s_llvm_gcc.c_str());
  printf("done\n");

  return 0;
}
