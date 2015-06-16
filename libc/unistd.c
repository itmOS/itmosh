#include <unistd.h>

int execvp(const char* path, char* const argv[])
{
  (void) path;
  (void) argv;
  // TODO: execvp is not supported for now
  return -1;
}

int dup2(int oldfd, int newfd)
{
  (void) oldfd;
  (void) newfd;
  // TODO: dup2 is not supported for now
  return -1;
}
