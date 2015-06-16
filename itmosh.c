#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <string.h>

void write_string(char* s)
{
  int len = strlen(s);
  int written = 0;
  while (written < len) {
    written += write(STDOUT_FILENO, s, len - written);
  }
}

int main()
{
  write_string("Hello, World\n");
  return 0;
}
