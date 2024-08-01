import 'package:dart_leetcode_75/kids_w_candles1431.dart';

void main() {
  Solution solution = Solution();

  // Test case 1
  List<int> candies1 = [2, 3, 5, 1, 3];
  int extraCandies1 = 3;
  print(solution.kidsWCandies(
      candies1, extraCandies1)); // [true, true, true, false, true]

  // Test case 2
  List<int> candies2 = [4, 2, 1, 1, 2];
  int extraCandies2 = 1;
  print(solution.kidsWCandies(
      candies2, extraCandies2)); // [true, false, false, false, false]

  // Test case 3
  List<int> candies3 = [12, 1, 12];
  int extraCandies3 = 10;
  print(solution.kidsWCandies(candies3, extraCandies3)); //  [true, false, true]
}
