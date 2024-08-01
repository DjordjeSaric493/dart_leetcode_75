import 'package:dart_leetcode_75/flowers_605.dart';

void main() {
  Solution solution = Solution();
  //leetcode cases for test
  // Test case 1
  List<int> flowerbed1 = [1, 0, 0, 0, 1];
  int n1 = 1;
  print(solution.canPlaceFlowers(flowerbed1, n1)); // true

  // Test case 2
  List<int> flowerbed2 = [1, 0, 0, 0, 1];
  int n2 = 2;
  print(solution.canPlaceFlowers(flowerbed2, n2)); // false

  // Test case 3
  List<int> flowerbed3 = [0, 0, 1, 0, 0, 0, 0];
  int n3 = 2;
  print(solution.canPlaceFlowers(flowerbed3, n3)); // true
}
