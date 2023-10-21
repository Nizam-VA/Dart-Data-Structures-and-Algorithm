import 'dart:io';

void main() {
  List<int> nums = [12, 14, 16, 20, 32, 45, 58, 78];
  print('Enter the search key: ');
  int searchKey = int.parse(stdin.readLineSync()!);
  int index = binarySearch(nums, searchKey);
  if (index >= 0) {
    print('Search key found at ${index + 1} position');
  } else {
    print('Search key not found');
  }
}

int binarySearch(List<int> nums, int searchKey) {
  int high = nums.length;
  int low = 0;
  int mid;
  while (low <= high) {
    mid = (low + high) ~/ 2;
    if (nums[mid] == searchKey) {
      return mid;
    }
    if (searchKey < nums[mid]) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return -1;
}
