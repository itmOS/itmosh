#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <string.h>
#include <stdio.h>

int main(int argc, char** argv)
{
  for (int i = 1; i < argc; i++) {
    printf(argv[i]);
    if (i < argc - 1) {
      printf(" ");
    }
  }
  printf("\n");
  return 0;
}
