import UIKit

//A distinct string is a string that is present only once in an array.
//
//Given an array of strings arr, and an integer k, return the kth distinct string present in arr. If there are fewer than k distinct strings, return an empty string "".
//
//Note that the strings are considered in the order in which they appear in the array.
//
// 
//
//Example 1:
//
//Input: arr = ["d","b","c","b","c","a"], k = 2
//Output: "a"
//Explanation:
//The only distinct strings in arr are "d" and "a".
//"d" appears 1st, so it is the 1st distinct string.
//"a" appears 2nd, so it is the 2nd distinct string.
//Since k == 2, "a" is returned.
//Example 2:
//
//Input: arr = ["aaa","aa","a"], k = 1
//Output: "aaa"
//Explanation:
//All strings in arr are distinct, so the 1st string "aaa" is returned.
//Example 3:
//
//Input: arr = ["a","b","a"], k = 3
//Output: ""
//Explanation:
//The only distinct string is "b". Since there are fewer than 3 distinct strings, we return an empty string "".

func kthDistinct(_ arr: [String], _ k: Int) -> String {
    var dict = [String:Int]()
    var arrayDicstric: [String] = []
    
    for i in 0...arr.count-1 {
        dict[arr[i], default: 0] += 1
    }
    
    
    for (key,value) in dict {
        if value == 1 {
            arrayDicstric.append(key)
        }
    }
    
    var count = k
    
    for value in arr {
        for value2 in arrayDicstric {
            if value == value2 {
                count -= 1
            }
            if count == 0 {
                return value2
            }
        }
    }
    return ""
}
let arr = ["d","b","c","b","c","a"]
let arr2 = ["a","b","a"]
kthDistinct(arr, 2)
