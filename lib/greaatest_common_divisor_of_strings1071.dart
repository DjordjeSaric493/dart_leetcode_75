/*1071. Greatest Common Divisor (GCD) of Strings
Easy - kurac moj easy il sam pglu

For two strings s and t, we say "t divides s" 
if and only if s = t + t + t + ... + t + t 
(i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, 
return the largest string x such that x divides both str1 and str2.

 

Example 1:

Input: str1 = "ABCABC", str2 = "ABC"
Output: "ABC"
Example 2:

Input: str1 = "ABABAB", str2 = "ABAB"
Output: "AB"
Example 3:

Input: str1 = "LEET", str2 = "CODE"
Output: ""
 

Constraints:

1 <= str1.length, str2.length <= 1000
str1 and str2 consist of English uppercase letters*/

class Solution1071 {
  String gcdOfString(String s1, String s2) {
    //guess I need to find largest String that can be concat
    //multiple times to form both input s1 and s2
    int gcdLength = gcd(s1.length, s2.length);
    String candidate = s1.substring(0, gcdLength);
    if (canDivide(s1, candidate) && canDivide(s2, candidate)) {
      return candidate;
    }
    return 'cant divide these strings';
  }

  //recursive function to compute gcd
  int gcd(int a, int b) {
    if (b == 0)
      return a;
    else
      return gcd(b, a % b);
  }

/*Verify if the given candidate string can construct the original string by repeated concatenation.
Ensure the length of the original string is a multiple of the candidate's length.
Check if repeated substrings of the candidate match the original string.*/
  bool canDivide(String str, String candidate) {
    int strlen = candidate.length;
    if (str.length % strlen != 0) return false;
    for (int i = 0; i < str.length; i += strlen) {
      if (str.substring(i, i + strlen) != candidate) return false;
    }
    return true;
  }
}
