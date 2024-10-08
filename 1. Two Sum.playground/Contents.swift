import UIKit

var greeting = "Hello, playground"
//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.
//
//
//
//Example 1:
//
//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
//Example 2:
//
//Input: nums = [3,2,4], target = 6
//Output: [1,2]
//Example 3:
//
//Input: nums = [3,3], target = 6
//Output: [0,1]
//
let nums = [2,7,11,15]
let target = 9

// MARK: - Fastest way

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()
    for (index,value) in nums.enumerated() {
        if let addet = dict[value] {
            return [addet,index]
        } else {
            dict[target - value] = index
        }
    }
    return []
}
twoSum(nums, target)

// MARK: - Brute Forse

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0...nums.count - 1 {
        for j in i + 1 ... nums.count - 1 {
            if nums[i] + nums[j] == target {
                return [i,j]
            }
        }
    }
    return []
}

twoSum2(nums, target)



func twoSum3(_ nums: [Int], _ target: Int) -> [Int] {
    var dictionary: [Int:Int] = [:]
    
    
    for (index,value) in nums.enumerated() {
        if let addet = dictionary[value] {
            return [addet,index]
        } else {
            dictionary[target-value] = index
        }
    }
    return []
}

twoSum3(nums, target)
