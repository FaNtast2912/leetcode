import UIKit

//Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.
//
// 
//
//Example 1:
//
//Input: nums1 = [1,2,2,1], nums2 = [2,2]
//Output: [2,2]
//Example 2:
//
//Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
//Output: [4,9]
//Explanation: [9,4] is also accepted.
// 
//
//Constraints:
//
//1 <= nums1.length, nums2.length <= 1000
//0 <= nums1[i], nums2[i] <= 1000

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    let nums1Sorted = nums1.sorted()
    let nums2Sorted = nums2.sorted()
    var answer = [Int]()
    
    var left = 0
    var right = 0
    
    while left < nums1.count, right < nums2.count {
        if nums1Sorted[left] < nums2Sorted[right] {
            left += 1
        } else if nums1Sorted[left] > nums2Sorted[right] {
            right += 1
        } else if nums1Sorted[left] == nums2Sorted[right] {
            answer.append(nums1Sorted[left])
            left += 1
            right += 1
        }
    }
    return answer
}

var nums1 = [1,2,2,1], nums2 = [2,2]

intersect(nums1, nums2)
