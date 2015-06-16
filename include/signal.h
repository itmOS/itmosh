#ifndef SIGNAL_H
#define SIGNAL_H

enum {
  SIGKILL
};

// TODO: We cannot implement kill, so it will do nothing
int kill(int child, int signal);

#endif
