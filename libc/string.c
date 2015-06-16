#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <string.h>

size_t strlen(char* s)
{
  size_t res = 0;
  while (s[res]) ++res;
  return res;
}
