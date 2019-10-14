import 'dart:math';
import 'test.dart';
// Challenge 1
// Write a function that returns the longest sequence of consecutive zeroes in a binary string.
// Examples:
// longestZero("01100001011000") ➞ "0000"
//
// longestZero("100100100") ➞ "00"
//
// longestZero("11111") ➞ ""
longestZero(String n) {
  int count = 0;
  int result =0;
  String value;
  for (int i = 0; i < n.length; i++) {
    if (n[i] == '0') {
      count++;
      result = max(result,count);
    }else{
      count = 0;
    }
  }
  value ='0'*result;
  return value;
}
// Challenge 2
// Create a function that performs an even-odd transform to an array, n times. Each even-odd transformation:
//
// 1. Adds two (+2) to each odd integer.
// 2. Subtracts two (-2) to each even integer.
// Examples:
// evenOddTransform([3, 4, 9], 3) ➞ [9, -2, 15]
// Since [3, 4, 9] => [5, 2, 11] => [7, 0, 13] => [9, -2, 15]
//
// evenOddTransform([0, 0, 0], 10) ➞ [-20, -20, -20]
//
// evenOddTransform([1, 2, 3], 1) ➞ [3, 0, 5]
evenOddTransform(List arr,int n){
 // List newlist;
  for(int i=0;i<arr.length;i++){
    if(arr[i] % 2 == 0){
      arr[i] =arr[i]-2*n;
    }else{
      arr[i]=arr[i]+2*n;
    }
  }
  return arr;
}




main() {
  print(longestZero("01100001011000"));
  print(evenOddTransform([1, 2, 3], 1));
}

// Challenge 3
// Write 2 test cases to test both the previous functions in test.dart