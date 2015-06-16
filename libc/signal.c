#include <signal.h>

int kill(pid_t pid, int signal)
{
  (void) pid;
  (void) signal;
  // TODO: kill is not supported
  return -1;
}
