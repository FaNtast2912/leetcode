import UIKit
//
//Given an array arr of integers, check if there exist two indices i and j such that :
//
//i != j
//0 <= i, j < arr.length
//arr[i] == 2 * arr[j]
//Example 1:
//
//Input: arr = [10,2,5,3]
//Output: true
//Explanation: For i = 0 and j = 2, arr[i] == 10 == 2 * 5 == 2 * arr[j]
//Example 2:
//
//Input: arr = [3,1,7,11]
//Output: false
//Explanation: There is no i and j that satisfy the conditions.



// MARK: - Two Pointers!!?!??!?!?!?
func checkIfExist(_ arr: [Int]) -> Bool {
    var array = arr
    // buble sort
    for i in 0...array.count-1 {
        for j in 1...array.count-1 {
            if array[j] < array[j-1] {
                let tmp = array[j-1]
                array[j-1] = array[j]
                array[j] = tmp
            }
        }
    }
    
    // two pointers
    for (indx,value) in array.enumerated() {
        var target = Double(value) / 2
        var left = 0
        var right = array.count-1
        
        while left < right {
            if left == indx {
                left += 1
            }
            if Double(array[left]) == target {
                return true
            } else {
                left += 1
            }
        }
    }
    return false
}

checkIfExist([-10,12,-20,-8,15])

// MARK: - Two Pointers

func checkIfExist2(_ arr: [Int]) -> Bool {
    
    var left = 0, right = 1
    while left < arr.count-1 {
        if arr[left] == arr[right]*2 || arr[right] == arr[left]*2 {
            return true
        } else if right == arr.count-1 {
            left += 1
            right = left + 1
        } else {
            right += 1
        }
    }
    return false
}
checkIfExist2([-2,0,10,-19,4,6,-8])

// MARK: - binary search


func checkIfExist3(_ arr: [Int]) -> Bool {
    var array = arr.sorted()
    // buble sort
//    for i in 0...array.count-1 {
//        for j in 1...array.count-1 {
//            if array[j] < array[j-1] {
//                let tmp = array[j-1]
//                array[j-1] = array[j]
//                array[j] = tmp
//            }
//        }
//    }
    var zeroCount = 0
    // Binary Search
    for i in 0...array.count-1 {
        if array[i] != 0 {
            var left = 0, right = array.count-1
            while left <= right {
                let mid = left + (right-left)/2
                if array[mid]*2 == array[i] {
                    return true
                } else if array[mid]*2 > array[i] {
                    right = mid - 1
                } else if array[mid]*2 < array[i] {
                    left = mid + 1
                }
            }
        } else {
            zeroCount += 1
        }
    }
    return zeroCount > 1
}
checkIfExist3([-2,0,10,-19,4,6,-8])

// MARK: - Hash Table
func checkIfExist4(_ arr: [Int]) -> Bool {
    var dict: [Double:Int] = [:]
    var zeroCount = 0
    for (indx,value) in arr.enumerated() {
        if let addet = dict[Double(value)] {
            return true
        } else {
            if value == 0 {
                zeroCount += 1
            } else {
                dict[Double(value)/2] = indx
                dict[Double(value)*2] = indx
            }
        }
    }
    return zeroCount > 1
}
checkIfExist4([7,1,14,11])
