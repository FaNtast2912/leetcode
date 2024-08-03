import UIKit


// remind buble sorting

let array = [4,5,3,7,2,1,6]

func bubleSort(_ array: [Int]) -> [Int] {
    var result = array
    let count = array.count-1
    
    if count != 0 {
        for i in 0...array.count-1 {
            for j in 1...array.count-1 {
                if result[j] < result[j-1] {
                    let temp = result[j-1]
                    result[j-1] = result[j]
                    result[j] = temp
                }
            }
        }
    }
    return result
}

bubleSort(array)


//You are given two integer arrays of equal length target and arr. In one step, you can select any non-empty subarray of arr and reverse it. You are allowed to make any number of steps.
//
//Return true if you can make arr equal to target or false otherwise.
//
// 
//
//Example 1:
//
//Input: target = [1,2,3,4], arr = [2,4,1,3]
//Output: true
//Explanation: You can follow the next steps to convert arr to target:
//1- Reverse subarray [2,4,1], arr becomes [1,4,2,3]
//2- Reverse subarray [4,2], arr becomes [1,2,4,3]
//3- Reverse subarray [4,3], arr becomes [1,2,3,4]
//There are multiple ways to convert arr to target, this is not the only way to do so.
//Example 2:
//
//Input: target = [7], arr = [7]
//Output: true
//Explanation: arr is equal to target without any reverses.
//Example 3:
//
//Input: target = [3,7,9], arr = [3,7,11]
//Output: false
//Explanation: arr does not have value 9 and it can never be converted to target.

// MARK: - Buble Sort
func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
    var sortedTarget = target
    var sortedArr = arr
    
    if target.count-1 != 0 {
        for i in 0...sortedTarget.count-1 {
            for j in 1...sortedTarget.count-1 {
                if sortedTarget[j] < sortedTarget[j-1] {
                    let temp = sortedTarget[j-1]
                    sortedTarget[j-1] = sortedTarget[j]
                    sortedTarget[j] = temp
                    
                }
                if sortedArr[j] < sortedArr[j-1] {
                    let temp = sortedArr[j-1]
                    sortedArr[j-1] = sortedArr[j]
                    sortedArr[j] = temp
                }
            }
        }
    }
    return sortedArr == sortedTarget
}

let target = [1,2,3,4]
let arr = [2,4,1,3]
canBeEqual(target, arr)

// MARK: - Hash Table try
func canBeEqual2(_ target: [Int], _ arr: [Int]) -> Bool {
    var dict = [Int:Int]()
    
    for i in 0...target.count-1 {
        dict[target[i], default: 0] += 1
        dict[arr[i], default: 0] -= 1
    }
    
    for (_,value) in dict {
        if value != 0 { return false }
    }
    
    return true
}
canBeEqual2(target, arr)
