void main() {
  List<int> nums = [22, 44, 33, 88, 66, 77, 55, 99, 11];
  for (int i = 0; i < nums.length - 1; i++) {
    int min = i;
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[j] < nums[min]) {
        min = j;
      }
      int temp = nums[min];
      nums[min] = nums[i];
      nums[i] = temp;
    }
  }
  print('List after bubble sort: $nums');
}
