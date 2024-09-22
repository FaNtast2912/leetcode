import UIKit
//Given an array arr of positive integers sorted in a strictly increasing order, and an integer k.
//
//Return the kth positive integer that is missing from this array.
//
//
//
//Example 1:
//
//Input: arr = [2,3,4,7,11], k = 5
//Output: 9
//Explanation: The missing positive integers are [1,5,6,8,9,10,12,13,...]. The 5th missing positive integer is 9.
//Example 2:
//
//Input: arr = [1,2,3,4], k = 2
//Output: 6
//Explanation: The missing positive integers are [5,6,7,...]. The 2nd missing positive integer is 6.

let arr = [3,4,7,8,11]
let k = 1
// MARK: - Binary search DONT USE THIS! use next func!

func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    var left = 0
    var right = arr.count-1
    var count = k
    var target = 1
    
    while count > 0 {
        print(target)
        while left <= right {
            let mid = left + (right-left)/2
            if target < arr[mid] {
                right = mid - 1
            } else if target > arr[mid] {
                left = mid + 1
            } else if target == arr[mid] {
                break
            }
        }
        
        if left > right {
            count -= 1
        }
        
        if count == 0 {
            return target
        }
        target += 1
        left = 0
        right = arr.count - 1
    }
    
    return target
}

// MARK: - Use strictly increasing order to find missingCounts every times

func findKthPositive2(_ arr: [Int], _ k: Int) -> Int {
    var left = 0
    var right = arr.count - 1

    while left <= right {
        var mid = left + (right - left) / 2

        var missingCounts = arr[mid] - (mid + 1)
        print(mid,missingCounts)
        if missingCounts < k {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }

    return left + k
}


findKthPositive2(arr, k)
