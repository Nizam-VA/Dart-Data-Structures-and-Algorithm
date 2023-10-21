import 'dart:io';

void main() {
  List<int> nums = [12, 14, 16, 20, 32, 45, 58, 78];
  print('Enter the search key: ');
  int searchKey = int.parse(stdin.readLineSync()!);
  int low = 0;
  int high = nums.length - 1;

  int binarySearch(int low, int high) {
    if (low == high) {
      if (nums[low] == searchKey) {
        return low;
      } else {
        return -1;
      }
    } else {
      int mid = (low + high) ~/ 2;
      if (nums[mid] == searchKey) {
        return mid;
      }
      if (nums[mid] > searchKey) {
        return binarySearch(low, mid - 1);
      } else {
        return binarySearch(mid + 1, high);
      }
    }
    // return -1;
  }

  int index = binarySearch(low, high);
  if (index >= 0) {
    print('Search key found at ${index + 1} position');
  } else {
    print('Search key not found');
  }
}
