import UIKit
import Foundation

//Given a list of 24-hour clock time points in "HH:MM" format, return the minimum minutes difference between any two time-points in the list.
// 
//
//Example 1:
//
//Input: timePoints = ["23:59","00:00"]
//Output: 1
//Example 2:
//
//Input: timePoints = ["00:00","23:59","00:00"]
//Output: 0


func findMinDifference(_ timePoints: [String]) -> Int {
    var answer = Int.max
    for index in 0...timePoints.count-2 {
        for j in index+1...timePoints.count-1 {
            let leftH = Int(timePoints[index].prefix(2))! == 0 ? 24 : Int(timePoints[index].prefix(2))!
            let leftM = Int(timePoints[index].suffix(2))!
            let rightH = Int(timePoints[j].prefix(2))! == 0 ? 24 : Int(timePoints[j].prefix(2))!
            let rightM = Int(timePoints[j].suffix(2))!
            if (abs((leftH - rightH)*60) - abs(leftM - rightM)) < answer {
                answer = (abs((leftH - rightH)*60) - abs(leftM - rightM))
            }
        }
    }
    return answer
}


