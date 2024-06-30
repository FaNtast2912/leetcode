import UIKit

func minimumAverage(_ nums: [Int]) -> Double {
//    var numsCopy = nums
//    var average = [Double]()
//    var min = Int.max
//    var max = Int.min
//    var left = 0
//    var right = nums.count - 1
//    
//    while left < right {
//        if nums[left] < nums[right] {
//            min = numsCopy[left] < min ? numsCopy[left] : min
//            max = numsCopy[right] > max ? numsCopy[right] : max
//            left += 1
//            right -= 1
//        } else {
//            min = numsCopy[right] < min ? numsCopy[right] : min
//            max = numsCopy[left] > max ? numsCopy[left] : max
//            left += 1
//            right -= 1
//        }
//        average.append(Double(min+max/2))
//        
//    }
//print(min,max)
//    guard let answer = average.last else { return 0 }
//    return answer
    var average = [Double]()
    var numsCopy = nums.sorted()
    var n = nums.count / 2
    while n > 0 {
        average.append((Double(numsCopy.first!)+Double(numsCopy.last!))/2)
        n -= 1
        numsCopy.removeLast()
        numsCopy.removeFirst()
    }
    return average.last!
}

var a = [1,9,8,3,10,5]
print(a.sorted())

minimumAverage(a)



//
//func getAverage(_ array: [Int]) -> Double {
//    var sum: Double = 0
//    let elements = Double(array.count)
//    for value in array {
//        sum += Double(value)
//    }
//    return sum/elements
//}


