#include <stdio.h>
#include <string.h>

#include <unistd.h>

void printf(char* s)
{
  size_t len = strlen(s);
  size_t written = 0;
  while (written < len) {
    written += write(STDOUT_FILENO, s, len - written);
  }
}
