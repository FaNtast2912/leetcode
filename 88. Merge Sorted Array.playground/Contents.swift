import UIKit

//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//    // берем левый и правый указатели по краям диапазона где есть данные. + намберс ставим в конец массива потому что будем с конца заполнять массив.
//        var left = m - 1
//        var right = n - 1
//        var numbers = nums1.count - 1
//
//
//        while left >= 0, right >= 0 {
//            if nums1[left] >= nums2[right] {
//                nums1[numbers] = nums1[left]
//                left -= 1
//            } else {
//                nums1[numbers] = nums2[right]
//                right -= 1
//            }
//            numbers -= 1
//        }
//
//    // для сценария когда у нас в первом массиве тольо ноли.
//        while right >= 0 {
//            nums1[numbers] = nums2[right]
//            right -= 1
//            numbers -= 1
//        }
//    }
//
//
//var nums1 = [1,2,3,0,0,0]
//
//merge(&nums1, 3, [2,5,6], 3)

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var left = m - 1
    var right = n - 1
    var numbers = nums1.count - 1

    while left >= 0 && right >= 0 {
        if nums1[left] >= nums2[right] {
            nums1[numbers] = nums1[left]
            left -= 1
        } else if nums1[left] <= nums2[right] {
            nums1[numbers] = nums2[right]
            right -= 1
        }
        numbers -= 1
    }
    
    while right >= 0 {
        nums1[numbers] = nums2[right]
        right -= 1
        numbers -= 1
    }
}


var nums1 = [0]

merge(&nums1, 0, [1], 1)
