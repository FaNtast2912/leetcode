import UIKit
func isPalindrome(_ s: String) -> Bool {
    
    func removeNonAlphanumeric(from string: String) -> String {
        return string.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
    }
    var array = Array(removeNonAlphanumeric(from: s))
    
    if array.isEmpty {
        return false
    }
    
    if array.count == 1 {
        return true
    }
    
    if array.count % 2 != 0 {
        let half = array.count/2
        array.remove(at: half)
        var left = 0
        var right = array.count-1
        var count = 0
        
        while left < right {
            if array[left] == array[right] {
                count += 1
            }
            left += 1
            right -= 1
        }
        
        return count == half
    }
    return array == array.reversed()
}
isPalindrome("race a car")

