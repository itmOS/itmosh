#ifndef STRING_H
#define STRING_H

#include <stddef.h>

size_t strlen(char* s);
void strcpy(char* dst, char* src);
char* strchr(char* s, char c);
void memcpy(void* dst, void* src, size_t count);
void memmove(void* dst, void* src, size_t count);

#endif
