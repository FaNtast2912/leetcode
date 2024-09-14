import UIKit

//Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
//
//You must write an algorithm with O(log n) runtime complexity.
//
// 
//
//Example 1:
//
//Input: nums = [1,3,5,6], target = 5
//Output: 2
//Example 2:
//
//Input: nums = [1,3,5,6], target = 2
//Output: 1
//Example 3:
//
//Input: nums = [1,3,5,6], target = 7
//Output: 4

// MARK: Binary Search

let nums = [1,3,5,6]
let target = 5

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count-1
    
    while left <= right {
        let mid = left + (right-left)/2
        if nums[mid] == target {
            return mid
        } else if nums[mid] > target {
            right = mid - 1
        } else if nums[mid] < target {
            left = mid + 1
        }
    }
    return left
}

searchInsert(nums, target)

// MARK: - Binary Search try 2!

func searchInsert2(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count-1
    
    while left <= right {
        let mid = left + (right - left)/2
        
        if nums[mid] == target {
            return mid
        } else if nums[mid] > target {
            right = mid - 1
        } else if nums[mid] < target {
            left = mid + 1
        }
    }
    return left
}

searchInsert2(nums, target)

// MARK: - Brute Forse

func searchInsert3(_ nums: [Int], _ target: Int) -> Int {
    var index = nums.count-1
    
    for i in (0...index).reversed() {
        if nums[i] == target {
            return i
        } else if target > nums[i] {
            return i + 1
        }
    }
    return 0
}
searchInsert3(nums, target)
