#include <stddef.h>

int main(int argc, char** argv);
void _exit(int exit_code);

// Entry point of the every program
void _start(void)
{
  // arguments are located at the 4MB separated by zero, followed by double zero
  char* args = (char*) 0x400000;
  // We support maximum 256 arguments
  char* ptrs[256] = {0};
  size_t argc = 0;
  while (1) {
    char* s = args;
    while (*s) ++s;
    ptrs[argc] = args;
    ++argc;
    ++s;
    if (! *s) {
      break;
    }
    args = s;
  }

  _exit(main(argc, ptrs));
}
