import UIKit
//
//Given an array of strings words, return the first palindromic string in the array. If there is no such string, return an empty string "".
//
//A string is palindromic if it reads the same forward and backward.
//
// 
//
//Example 1:
//
//Input: words = ["abc","car","ada","racecar","cool"]
//Output: "ada"
//Explanation: The first string that is palindromic is "ada".
//Note that "racecar" is also palindromic, but it is not the first.
//Example 2:
//
//Input: words = ["notapalindrome","racecar"]
//Output: "racecar"
//Explanation: The first and only string that is palindromic is "racecar".
//Example 3:
//
//Input: words = ["def","ghi"]
//Output: ""
//Explanation: There are no palindromic strings, so the empty string is returned.
//

//func firstPalindrome(_ words: [String]) -> String {
//    
//    func isPalindrome(_ word: String) -> Bool {
//        var array = Array(word)
//        
//        if array.count % 2 != 0 {
//            let index = array.count/2
//            array.remove(at: index)
//        }
//        
//        var left = 0
//        var right = array.count-1
//        var count = 0
//        
//        while left < right {
//            if array[left] == array[right] {
//                count += 1
//            }
//            left += 1
//            right -= 1
//        }
//        return count == array.count/2
//    }
//    
//    for word in words {
//        if isPalindrome(word) {
//            return word
//        }
//    }
//    return ""
//}


func firstPalindrome(_ words: [String]) -> String {
    
    for word in words {
        let array = word.split(separator: "")
        var left = 0
        var right = array.count - 1
        
        while left < right {
            if array[left] == array[right] {
                left += 1
                right -= 1
                continue
            } else {
                break
            }
        }
        
        if left == right || left > right {
            return word
        }
    }
    return ""
}
