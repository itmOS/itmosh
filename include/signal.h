#ifndef SIGNAL_H
#define SIGNAL_H

enum {
  SIGKILL
};

typedef int pid_t;

// TODO: We cannot implement kill, so it will do nothing
int kill(pid_t child, int signal);

#endif
