/* Bubble Sort is a simple sorting algorithm that repeatedly steps through the list,
compares adjacent elements, and swaps them if they are in the wrong order.
The pass through the list is repeated until the list is sorted.
The algorithm gets its name because smaller elements "bubble" to the top of the list.

Algorithm

1. Start at the beginning of the list.
2. Compare the first two elements. If the first element is greater than the second, swap them.
3. Move to the next pair of elements and repeat step 2.
4. Continue this process, moving through the list and comparing/swapping adjacent elements, until you reach the end of the list.
5. After the first pass, the largest element will have "bubbled up" to the end of the list.
6. Repeat steps 1-5 for the remaining unsorted elements (excluding the last element which is already in its correct position).
7. Continue this process until the entire list is sorted.
*/

import 'dart:io';

void main() {
  List<int> nums = [23, 56, 45, 78, 96, 32, 25, 47];
  for (int i = 0; i < nums.length - 1; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] > nums[j]) {
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
      }
    }
  }
  print('List after sorting: ');
  for (int i = 0; i < nums.length; i++) {
    stdout.write('${nums[i]} ');
  }
}
