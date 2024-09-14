import UIKit
//
//125. Valid Palindrome

//A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
//
//Given a string s, return true if it is a palindrome, or false otherwise.
//Example 1:
//
//Input: s = "A man, a plan, a canal: Panama"
//Output: true
//Explanation: "amanaplanacanalpanama" is a palindrome.
//Example 2:
//
//Input: s = "race a car"
//Output: false
//Explanation: "raceacar" is not a palindrome.
//Example 3:
//
//Input: s = " "
//Output: true
//Explanation: s is an empty string "" after removing non-alphanumeric characters.
//Since an empty string reads the same forward and backward, it is a palindrome.

// MARK: - Two Pointers

let s = "A man, a plan, a canal: Panama"

func isPalindrome(_ s: String) -> Bool {
    var string = Array(s.split(separator: " ").description.lowercased().filter { $0.isLetter || $0.isNumber })
    var left = 0
    var right = string.count - 1
    
    while left < right {
        if string[left] != string[right] {
            return false
        } else {
            left += 1
            right -= 1
        }
    }
    return true
}
 
isPalindrome(s)










































//func isPalindrome(_ s: String) -> Bool {
//    
//    func removeNonAlphanumeric(from string: String) -> String {
//        return string.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
//    }
//    var array = Array(removeNonAlphanumeric(from: s))
//    
//    if array.isEmpty {
//        return false
//    }
//    
//    if array.count == 1 {
//        return true
//    }
//    
//    if array.count % 2 != 0 {
//        let half = array.count/2
//        array.remove(at: half)
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
//        
//        return count == half
//    }
//    return array == array.reversed()
//}
//isPalindrome("race a car")

