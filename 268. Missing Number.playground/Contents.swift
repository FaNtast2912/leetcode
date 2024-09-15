import UIKit
//
//Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
//
//
//
//Example 1:
//
//Input: nums = [3,0,1]
//Output: 2
//Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.
//Example 2:
//
//Input: nums = [0,1]
//Output: 2
//Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.
//Example 3:
//
//Input: nums = [9,6,4,2,3,5,7,0,1]
//Output: 8
//Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.
// MARK: - Brute Forse
func missingNumber(_ nums: [Int]) -> Int {
    let arr = nums.sorted()
    print(arr)
    var n = 0
    var left = 0
    var right = arr.count-1
    
    return n
}

missingNumber([0,1,2,3])

// MARK: - Bit Manipulation doesnt work

func missingNumber2(_ nums: [Int]) -> Int {
    var missingNumber = nums.count
    for (index, num) in nums.enumerated() {
        let indx: UInt8 = UInt8(index)
        missingNumber ^= index ^ num
    }
    return missingNumber
}
missingNumber2([0,1,2,3,4,5,6,7,9])

