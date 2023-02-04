#include <stdio.h>

int addFromArray(char* arr) {
  int num1 = arr[0];
  int num2 = arr[1];
  return num1 + num2;
}

void mysteryFunc(int* num) {
  int value = *num;
  *num = value * value;
}

int main() {
  char str_arr[] = "I <3 CS0300!";
  printf("%s\n", str_arr);  // A

  char* str_ptr = str_arr;
  printf("%s\n", str_ptr);  // B

  str_arr[9] = '3';
  printf("%s\n", str_arr);  // C
  printf("%s\n", str_ptr);  // D

  int added = addFromArray(str_ptr);
  printf("%d\n", added);  // E

  // Start of buggy code block
  mysteryFunc(added);
  printf("%d\n", added);  // G
                          // End of buggy code block
}
