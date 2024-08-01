/*
605. Can Place Flowers

You have a long flowerbed in which some of the plots are planted, and some are not.
However, flowers cannot be planted in adjacent plots.

Given an integer array flowerbed containing 0's and 1's, 
where 0 means empty and 1 means not empty, and an integer n, 
return true if n new flowers can be planted in the flowerbed 
without violating the no-adjacent-flowers rule and false otherwise.

Example 1:

Input: flowerbed = [1,0,0,0,1], n = 1
Output: true
Example 2:

Input: flowerbed = [1,0,0,0,1], n = 2
Output: false*/

class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int counter = 0;
    int noofflowers = flowerbed.length;

    for (int i = 0; i < noofflowers; i++) {
      //iterate
      if (flowerbed[i] == 0) {
        //for each empty spot (flowerbed[i] == 0), check if both the left and right adjacent

        bool leftempty = (i == 0) ||
            (flowerbed[i - 1] ==
                0); //if my position is empty or it's on first position
        bool rightempty = (i == noofflowers - 1) ||
            (flowerbed[i + 1] ==
                0); //if the right spot is empty or its the last position

        if (leftempty && rightempty) {
          //plant flower if theres no other in left and right
          flowerbed[i] = 1;
          counter++;
          if (counter >= n) {
            return true;
          }
        }
      }
    }
    return counter >= n;
  }
}
