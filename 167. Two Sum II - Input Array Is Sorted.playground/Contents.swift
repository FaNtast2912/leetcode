import UIKit
//
//167. Two Sum II - Input Array Is Sorted
//Medium
//
//Topics
//Companies
//Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number. Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.
//
//Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.
//
//The tests are generated such that there is exactly one solution. You may not use the same element twice.
//
//Your solution must use only constant extra space.
//
// 
//
//Example 1:
//
//Input: numbers = [2,7,11,15], target = 9
//Output: [1,2]
//Explanation: The sum of 2 and 7 is 9. Therefore, index1 = 1, index2 = 2. We return [1, 2].
//Example 2:
//
//Input: numbers = [2,3,4], target = 6
//Output: [1,3]
//Explanation: The sum of 2 and 4 is 6. Therefore index1 = 1, index2 = 3. We return [1, 3].
//Example 3:
//
//Input: numbers = [-1,0], target = -1
//Output: [1,2]
//Explanation: The sum of -1 and 0 is -1. Therefore index1 = 1, index2 = 2. We return [1, 2].

// MARK: - Two pointers

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        while left < right {
            if numbers[left] + numbers[right] == target {
                return [left,right]
            } else if numbers[left] + numbers[right] < target {
                left += 1
            } else if numbers[left] + numbers[right] > target {
                right -= 1
            }
        }
        return []
    }
}


func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1
    while left < right {
        if numbers[left] + numbers[right] == target {
            return [left+1,right+1]
        } else if numbers[left] + numbers[right] < target {
            left += 1
        } else if numbers[left] + numbers[right] > target {
            right -= 1
        }
    }
    return []
}

let numbers = [2,7,11,15]
let target = 17

twoSum(numbers, target)

// MARK: - Binary Search

func twoSum2(_ numbers: [Int], _ target: Int) -> [Int] {
    for i in 0...numbers.count - 1 {
        var numberToFind = target - numbers[i]
        var left = i + 1, right = numbers.count - 1
        while left <= right {
            let mid = left + (right - left)/2
            if numbers[mid] == numberToFind {
                return [i+1,mid+1]
            } else if numberToFind < numbers[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
    }
    return []
}


twoSum2(numbers, target)



//func findNumerInArray(_ array: [Int], _ target: Int) -> Int {
//    var left = 0
//    var right = array.count - 1
//    if array[left] != target && array[right] != target {
//        while left < right {
//            let mid = left + (right-left)/2
//            if mid == target {
//                return mid
//            } else if target < mid {
//                left = mid
//            } else if target > mid {
//                right = mid
//            }
//        }
//    }
//    return 0
//}
//
//let array = [1,2,3,4,5,6,7,8,9,10]
//let target2 = 6
//findNumerInArray(array, target2)
