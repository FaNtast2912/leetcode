import UIKit

//Given a string s, reverse only all the vowels in the string and return it.
//
//The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.
//
// 
//
//Example 1:
//
//Input: s = "hello"
//Output: "holle"
//Example 2:
//
//Input: s = "leetcode"
//Output: "leotcede"
// 
//
//Constraints:
//
//1 <= s.length <= 3 * 105
//s consist of printable ASCII characters.


func reverseVowels(_ s: String) -> String {
    var array: = s.compactMap {$0}
    var left = 0
    var right = array.count-1
    var set: [Character] = ["a","e","i","o","u"]
    set.count
    
    while left < right {
        if !set.contains(array[left].lowercased()) {
            while !set.contains(array[left].lowercased()) {
                left += 1
            }
            if !set.contains(array[right].lowercased()) {
                while !set.contains(array[right].lowercased()) {
                    right -= 1
                }
            }
        }
        if set.contains(array[left].lowercased()) && set.contains(array[right].lowercased()) {
            var temp = array[left]
            array[left] = array[right]
            array[right] = temp
        }
    }
    
    
    
    
    return ""

}

let charactersArray = ["П", "р", "и", "в", "е", "т", " ", "м", "и", "р", "!"]
let myString = String(charactersArray.joined(separator: ""))
print(myString) // Вывод: Привет мир!
