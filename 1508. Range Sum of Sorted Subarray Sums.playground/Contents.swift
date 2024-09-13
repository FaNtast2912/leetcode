import UIKit

//You are given the array nums consisting of n positive integers. You computed the sum of all non-empty continuous subarrays from the array and then sorted them in non-decreasing order, creating a new array of n * (n + 1) / 2 numbers.
//
//Return the sum of the numbers from index left to index right (indexed from 1), inclusive, in the new array. Since the answer can be a huge number return it modulo 109 + 7.
//
// 
//
//Example 1:
//
//Input: nums = [1,2,3,4], n = 4, left = 1, right = 5
//Output: 13
//Explanation: All subarray sums are 1, 3, 6, 10, 2, 5, 9, 3, 7, 4. After sorting them in non-decreasing order we have the new array [1, 2, 3, 3, 4, 5, 6, 7, 9, 10]. The sum of the numbers from index le = 1 to ri = 5 is 1 + 2 + 3 + 3 + 4 = 13.
//Example 2:
//
//Input: nums = [1,2,3,4], n = 4, left = 3, right = 4
//Output: 6
//Explanation: The given array is the same as example 1. We have the new array [1, 2, 3, 3, 4, 5, 6, 7, 9, 10]. The sum of the numbers from index le = 3 to ri = 4 is 3 + 3 = 6.
//Example 3:
//
//Input: nums = [1,2,3,4], n = 4, left = 1, right = 10
//Output: 50


// MARK: - рабочий метод, но не работает по времени, В решении число фибоначи и т д


func rangeSum(_ nums: [Int], _ n: Int, _ left: Int, _ right: Int) -> Int {
    var startIndx = 0
    var rightIndx = startIndx
    var endIndx = n - 1
    var arr:[Int] = []
    var answer: Int = 0
    
    if endIndx <= 0 {
        print("tut")
        return nums[0]
    }
    
     // Making Array
    while startIndx <= endIndx {
        while rightIndx <= endIndx {
            let tempArr = nums[startIndx...rightIndx]
            var tempSumm = 0
            for numbers in tempArr {
                tempSumm += numbers
            }
            arr.append(tempSumm)
            rightIndx += 1
        }
        startIndx += 1
        rightIndx = startIndx
    }
    
    for i in 0...arr.count - 1 {
        for j in 1...arr.count - 1 {
            if arr[j] < arr[j-1] {
                let tmp = arr[j]
                arr[j] = arr[j-1]
                arr[j-1] = tmp
            }
        }
    }
    print(arr)
    for i in left...right {
        answer += arr[i-1]
    }
    
    return answer
}

rangeSum([1,3], 2, 1, 2)
