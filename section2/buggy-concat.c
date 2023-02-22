#include <stdio.h>
#include <stdlib.h>
#include <string.h>

const unsigned int num_words = 3;

char* concatenate(char** list) {
  size_t total_len = 0;
  for (unsigned int i = 0; i < num_words; i++) {
    total_len += strlen(*list + i);
  }

  char* concatenated = (char*)malloc(total_len);

  total_len = 0;
  for (unsigned int i = 0; i < num_words; i++) {
    size_t len = strlen(*list + i);
    strncpy(concatenated + total_len, *list + i, len);
    total_len += len;
  }

  return concatenated;
}

int main() {
  char* list[3];

  char* str_1 = "CS";
  char* str_2 = "CI";
  char* str_3 = "0300!";

  list[0] = str_1;
  list[1] = str_2;
  list[2] = str_3;

  printf("String 1: %s\n", str_1);
  printf("String 2: %s\n", str_2);
  printf("String 3: %s\n", str_3);

  char* concatenated = concatenate(list);
  printf("%s\n", concatenated);

  return 0;
}
