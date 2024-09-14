import UIKit

//
//Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.
//
//You must not use any built-in exponent function or operator.
//
//For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.
//
//
//Example 1:
//
//Input: x = 4
//Output: 2
//Explanation: The square root of 4 is 2, so we return 2.
//Example 2:
//
//Input: x = 8
//Output: 2
//Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.

// 0 1 2 3 4 5 6 7 8
//
//func mySqrt(_ x: Int) -> Int {
//    var left = 0
//    var right = x/2
//    while left <= right {
//        let mid = left + (right-left)/2
//        if mid * mid == x {
//            return mid
//        } else if mid * mid > x {
//            right = mid - 1
//        } else if mid * mid < x {
//            left = mid + 1
//        }
//
//    }
//    return x == 1 ? 1 : right
//}
//
//let x = 2
//
//mySqrt(x)
//

// MARK: - Binary Search

class Solution {
    func mySqrt(_ x: Int) -> Int {
        var left = 0
        var right = x/2
        while left <= right {
            let mid = left + (right-left)/2
            if mid * mid == x {
                return mid
            } else if mid * mid > x {
                right = mid - 1
            } else if mid * mid < x {
                left = mid + 1
            }
            
        }
        return x == 1 ? 1 : right
    }
}

func mySqrt(_ x: Int) -> Int {
    var left = 0
    var right = x/2
    while left < right {
        let mid = left + (right-left)/2
        if mid * mid == x {
            return mid
        } else if mid * mid > x {
            right = mid - 1
        } else if mid * mid < x {
            left = mid + 1
        }
        
    }
    return right
}

let x = 1

mySqrt(x)


// MARK: - Binary Search try two!

func mySqrt2(_ x: Int) -> Int {
    var left = 0
    var right = x/2
    
    while left <= right {
        let mid = left + (right-left)/2
        
        if mid*mid == x {
            return mid
        } else if x > mid*mid {
            left = mid + 1
        } else if x < mid*mid {
            right = mid - 1
        }
    }
    return x == 1 ? 1 : right
}

mySqrt2(x)
