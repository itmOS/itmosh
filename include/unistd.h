#ifndef UNISTD_H
#define UNISTD_H

#include <sys/types.h>
#include <stddef.h>
#include <sys/stat.h>

ssize_t read(int fd, void* buf, size_t count);
ssize_t write(int fd, void* bug, size_t count);
int close(int fd);
void _exit(int status);

int pipe(int pipefd[2]);
// TODO: Seems that I have no time to implement this, so it will ignore options
int pipe2(int pipefd[2], int options);
int dup2(int oldfd, int newfd);

pid_t fork(void);
int execv(const char* path, char* const argv[]);
int execvp(const char* path, char* const argv[]);

// TODO: man 2 sbrk says that intptr_t should be passed as argument
void* sbrk(int increment);

#endif
