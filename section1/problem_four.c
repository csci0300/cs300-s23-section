#include <stdio.h>

void problemFour() {
  long x;
  long y = 121;
  x = &y;
  long* ptr = &x;
  printf("%d\n", *((long*)*ptr));
}

int main() {
  problemFour();
}
