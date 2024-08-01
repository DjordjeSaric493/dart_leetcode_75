import 'package:dart_leetcode_75/greaatest_common_divisor_of_strings1071.dart';

void main() {
  // Create an instance of the Solution1071 class
  Solution1071 solution = Solution1071();

  // Test cases
  String str1 = "ABCABC";
  String str2 = "ABC";
  print(
      'GCD of "$str1" and "$str2" is: "${solution.gcdOfString(str1, str2)}"'); // Output: "ABC"

  str1 = "ABABAB";
  str2 = "ABAB";
  print(
      'GCD of "$str1" and "$str2" is: "${solution.gcdOfString(str1, str2)}"'); // Output: "AB"

  str1 = "LEET";
  str2 = "CODE";
  print(
      'GCD of "$str1" and "$str2" is: "${solution.gcdOfString(str1, str2)}"'); // Output: "cant divide strings"
}
