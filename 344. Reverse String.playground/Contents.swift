import UIKit

//
//Write a function that reverses a string. The input string is given as an array of characters s.
//
//You must do this by modifying the input array in-place with O(1) extra memory.
//
// 
//
//Example 1:
//
//Input: s = ["h","e","l","l","o"]
//Output: ["o","l","l","e","h"]
//Example 2:
//
//Input: s = ["H","a","n","n","a","h"]
//Output: ["h","a","n","n","a","H"]
// 
//
//Constraints:
//
//1 <= s.length <= 105
//s[i] is a printable ascii character.



//func reverseString(_ s: inout [Character]) {
//    var left = 0
//    var right = s.count-1
//    
//    while left < right {
//        var temp: Character
//        temp = s[left]
//        s[left] = s[right]
//        s[right] = temp
//        left += 1
//        right -= 1
//    }
//}
//
//var s: [Character] = ["h","e","l","l","o"]
//
//reverseString(&s)



func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1
    
    while left < right {
        let tmp = s[left]
        s[left] = s[right]
        s[right] = tmp
        left += 1
        right -= 1
    }
}
