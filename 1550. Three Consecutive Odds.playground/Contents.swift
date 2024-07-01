import UIKit
//
//Given an integer array arr, return true if there are three consecutive odd numbers in the array. Otherwise, return false.
// 
//
//Example 1:
//
//Input: arr = [2,6,4,1]
//Output: false
//Explanation: There are no three consecutive odds.
//Example 2:
//
//Input: arr = [1,2,34,3,4,5,7,23,12]
//Output: true
//Explanation: [5,7,23] are three consecutive odds.
// 
//
//Constraints:
//
//1 <= arr.length <= 1000
//1 <= arr[i] <= 1000

// проверка на четность левого указателя, если четный - двигай оба вправо. если не четный проверка на четность правого указателя и что он больше левого, если не прошел проверку, двагаем оба указателя, если прошел двигаем правый указатель(после чего надо проверить не привысили ли мы значение по правому показателю) делаем проверку четности, если проверка не пройдена двигаем левый указатель если прошел возвращаем тру

func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
    var left = 0
    var right = 1
    let n = arr.count-1
    
    while right <= n {
        if arr[left] % 2 == 0 {
            left += 1
            right += 1
        } else if arr[right] % 2 == 0 {
            left += 1
            right += 1
        } else {
            right += 1
            if right > n {
                return false
            }
            if arr[right] % 2 != 0 {
                return true
            } else {
                left += 1
            }
        }
    }
    return false
}

threeConsecutiveOdds([1,1])

1 % 2 == 0
// 1,2 left right
