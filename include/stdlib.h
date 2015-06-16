#ifndef STDLIB_H
#define STDLIB_H

#include <sys/types.h>

void* malloc(size_t size);
void free(void* ptr);
// TODO: Realloc is not implemented for now
void* realloc(void* ptr, size_t size);

#endif
