#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <string.h>
#include <stdio.h>

int write_err(char*);

int main(int argc, char** argv)
{
  for (int i = 1; i < argc; i++) {
    write_err(argv[i]);
    if (i < argc - 1) {
      write_err(" ");
    }
  }
  write_err("\n");
  return 0;
}
