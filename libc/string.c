#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <string.h>

char* strchr(char* s, char c)
{
  while (*s) {
    if (*s == c) return s;
    ++s;
  }
  return NULL;
}

char* strcpy(char* s, char* t)
{
  char* ss = s;
  while ((*s++ = *t++));
  return ss;
}

size_t strlen(char* s)
{
  size_t res = 0;
  while (s[res]) ++res;
  return res;
}

void memcpy(void* _dst, void* _src, size_t cnt)
{
  char* dst = (char*) _dst;
  char* src = (char*) _src;
  while (cnt--) {
    *dst++ = *src++;
  }
}

void memmove(void* dst, void* src, size_t cnt)
{
  char buffer[cnt];
  memcpy((void*) buffer, src, cnt);
  memcpy(dst, (void*) buffer, cnt);
}
