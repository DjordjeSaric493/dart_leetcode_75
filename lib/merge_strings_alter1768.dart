/**
 * leetcode 1768
 You are given two strings word1 and word2. 
 Merge the strings by adding letters in alternating order, 
 starting with word1. 
 If a string is longer than the other, 
 append the additional letters onto the end of the merged string.

Return the merged string.

 

Example 1:

Input: word1 = "abc", word2 = "pqr"
Output: "apbqcr"
Explanation: The merged string will be merged as so:
word1:  a   b   c
word2:    p   q   r
merged: a p b q c r
Example 2:

Input: word1 = "ab", word2 = "pqrs"
Output: "apbqrs"
Explanation: Notice that as word2 is longer, "rs" is appended to the end.
word1:  a   b 
word2:    p   q   r   s
merged: a p b q   r   s
 */

class Solution {
  String mergeAlter(String word1, String word2) {
    //String buffer is used for string concatenation

    StringBuffer merge = StringBuffer();
    int i = 0, j = 0; //two indexes 4 iterating through word1, word2
    int word1len = word1.length, word2len = word2.length;
    //get length of these words as integers

    //iterate until you get to the end of string
    while (i < word1len || j < word2len) {
      if (i < word1len) {
        //check if it's not end of word1 length
        //if not add character from word1 on i position into merge
        //and increase i
        merge.write(word1[i++]);
      }
      if (j < word2len) {
        merge.write(word2[j++]);
        //read previous comment
      }
    }
    return merge.toString(); //return to avoid null screaming
  }
}
