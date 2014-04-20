#include <unistd.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
  char *args[] = {"/bin/sh", "-c", "echo I win! > bar.txt", 0};
  execv("/bin/sh", args);

  printf("testing\n");
  while(1);
  return 0;
}
