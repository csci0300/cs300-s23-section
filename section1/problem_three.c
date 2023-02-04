#include <stdio.h>

void problemThree() {
  int x = 120;
  int* int_ptr = &x;
  char* char_ptr = int_ptr;
  printf("%d\n", *int_ptr);
  printf("%c\n", *char_ptr);
}

int main() { 
  problemThree();
}
