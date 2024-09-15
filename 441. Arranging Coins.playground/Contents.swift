import UIKit
//You have n coins and you want to build a staircase with these coins. The staircase consists of k rows where the ith row has exactly i coins. The last row of the staircase may be incomplete.
//
//Given the integer n, return the number of complete rows of the staircase you will build.

//Example 1:
//
//
//Input: n = 5
//Output: 2
//Explanation: Because the 3rd row is incomplete, we return 2.
//Example 2:
//
//
//Input: n = 8
//Output: 3
//Explanation: Because the 4th row is incomplete, we return 3.


// MARK: - Brute Forse
let input = 5

func arrangeCoins(_ n: Int) -> Int {
    var number = n
    for i in 1...n {
        number -= i
        if number < 0 {
            return i - 1
        }
    }
    return 1
}

arrangeCoins(input)

// MARK: - Binary Search

func arrangeCoins2(_ n: Int) -> Int {
    var left = 1
    var right = n
    var rows = 0
    
    while left <= right{
        var mid = (left + right) / 2
        var coins = mid * (mid + 1) / 2
        print("mid = \(mid)")
        print("coins = \(coins)")
        
        if coins > n{
            right = mid - 1
        }
        else{
            print("increase left +1")
            left = mid + 1
            rows = max(mid, rows)
        }
    }
    return rows
}
arrangeCoins2(input)
