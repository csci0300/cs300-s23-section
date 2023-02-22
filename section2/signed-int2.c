#include <stdio.h>

int main() {
  unsigned int x = 0x7031ab3c;
  unsigned int y = 0x142230f2;
  unsigned int result = x + y;
  printf("%u + %u = %u\n", x, y, result);

  return 0;
}
