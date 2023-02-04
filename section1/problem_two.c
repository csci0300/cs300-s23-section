void problemTwo() {
  int x;
  int* int_ptr;
  int** int_ptr_ptr;
  int_ptr_ptr = &int_ptr;
  *int_ptr_ptr = &x;
  *(*int_ptr_ptr) = 120;
}

int main() {
  problemTwo();
}
