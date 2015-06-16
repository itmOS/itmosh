#ifndef SYS_TYPES_H
#define SYS_TYPES_H

#include <stddef.h>

typedef int ssize_t;
typedef int pid_t;

// TODO: Constants in sys/types.h ???
enum {
  STDIN_FILENO = 0,
  STDOUT_FILENO = 1,
  STDERR_FILENO = 2
};

// Zero or more flags can be bitwise-or'd
enum {
  O_RDONLY = 1,
  O_WRONLY = 1 << 1,
  O_RDWR = 1 << 2,
  O_CREAT = 1 << 3,
  O_DIRECTORY = 1 << 4,
  O_APPEND = 1 << 5,
  O_CLOEXEC = 1 << 6
};

enum {
  EXIT_SUCCESS = 0, EXIT_FAILURE
};

// TODO: Move to the better place
#define WEXITSTATUS(x) 0

#endif
