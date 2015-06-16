#ifndef SYS_STAT_H
#define SYS_STAT_H

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
  O_APPEND = 1 << 5
};

#endif
