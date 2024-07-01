import UIKit
//Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//
//Note that you must do this in-place without making a copy of the array.
//
// 
//
//Example 1:
//
//Input: nums = [0,1,0,3,12]
//Output: [1,3,12,0,0]
//Example 2:
//
//Input: nums = [0]
//Output: [0]
// 
//
//Constraints:
//
//1 <= nums.length <= 104
//-231 <= nums[i] <= 231 - 1

/*
пока правый указатель < n
 1если левый указатель = 0
 да
    2если правый указатель = 0
    да - правый указатель +1
    нет - левый указатель = правый указатель, правый указатель = 0, левый=правый, правый+1
 нет
    левый = правый, правый +1
*/

func moveZeroes(_ nums: inout [Int]) {
    var left = 0
    var right = left + 1
    
    while right < nums.count {
        if nums[left] == 0 {
            if nums[right] == 0 {
                right += 1
            } else {
                nums[left] = nums[right]
                nums[right] = 0
                left += 1
                right += 1
            }
        } else {
            left += 1
            right += 1
        }
    }
}
