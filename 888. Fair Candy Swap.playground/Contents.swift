import UIKit
import Foundation
//
//Alice and Bob have a different total number of candies. You are given two integer arrays aliceSizes and bobSizes where aliceSizes[i] is the number of candies of the ith box of candy that Alice has and bobSizes[j] is the number of candies of the jth box of candy that Bob has.
//
//Since they are friends, they would like to exchange one candy box each so that after the exchange, they both have the same total amount of candy. The total amount of candy a person has is the sum of the number of candies in each box they have.
//
//Return an integer array answer where answer[0] is the number of candies in the box that Alice must exchange, and answer[1] is the number of candies in the box that Bob must exchange. If there are multiple answers, you may return any one of them. It is guaranteed that at least one answer exists.
//
// 
//
//Example 1:
//
//Input: aliceSizes = [1,1], bobSizes = [2,2]
//Output: [1,2]
//Example 2:
//
//Input: aliceSizes = [1,2], bobSizes = [2,3]
//Output: [1,2]
//Example 3:
//
//Input: aliceSizes = [2], bobSizes = [1,3]
//Output: [2,3]
// 
//
//Constraints:
//
//1 <= aliceSizes.length, bobSizes.length <= 104
//1 <= aliceSizes[i], bobSizes[j] <= 105
//Alice and Bob have a different total number of candies.
//There will be at least one valid answer for the given input.

var found = false

func binarySearch(array: [Int], target: Int, startIndx: Int, endIndx: Int) -> Int {
    if startIndx == endIndx {
        if (target == array[startIndx]) {
            found = true
        } else {
            found = false
        }
        
        return startIndx
    }
    
    let middle = (startIndx + (endIndx-startIndx)/2)
    
    if target == array[middle] {
        found = true
        return middle
    } else if target > array[middle] {
         return binarySearch(array: array, target: target, startIndx: middle+1, endIndx: endIndx)
    } else {
        return binarySearch(array: array, target: target, startIndx: startIndx, endIndx: middle)
    }
    return 0
}

func fairCandySwap(_ aliceSizes: [Int], _ bobSizes: [Int]) -> [Int] {
    var answer: [Int] = [0,0]
    let aSortedArr = aliceSizes.sorted()
    let bSortedArr = bobSizes.sorted()
    var sumA = aSortedArr.reduce(0,+), sumB = bSortedArr.reduce(0,+)
    
    for i in 0...aSortedArr.count - 1 {
        let alice = aSortedArr[i]
        let bob = alice + (sumB - sumA)/2
        
        _ = binarySearch(array: bSortedArr, target: bob, startIndx: 0, endIndx: bSortedArr.count-1)
        if found {
            answer[0] = alice
            answer[1] = bob
            return answer
        }
    }
    return answer
}

fairCandySwap([2,5], [2,4])
