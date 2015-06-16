#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <string.h>

static void print(char* s)
{
  size_t len = strlen(s);
  size_t written = 0;
  while (written < len) {
    written += write(STDOUT_FILENO, s, len);
  }
}

int main(int argc, char** argv)
{
  for (int i = 1; i < argc; i++) {
    print(argv[i]);
    if (i != argc - 1) {
      print(" ");
    }
  }
  print("\n");
  return 0;
}
