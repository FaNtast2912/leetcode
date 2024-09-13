import UIKit



func minBitFlips(_ start: Int, _ goal: Int) -> Int {
    
    func intToBinary(number: Int) -> String {
        var binaryString = ""
        var currentNumber = number
        while currentNumber > 0 {
            let remainder = currentNumber % 2
            binaryString = String(remainder) + binaryString
            currentNumber /= 2
        }

        if binaryString.isEmpty {
            return "0"
        }
        return binaryString
    }

    var startBinary = intToBinary(number: start)
    var goalBinary = intToBinary(number: goal)

    if startBinary.count > goalBinary.count {
        var string = ""
        var n = startBinary.count - goalBinary.count
        for i in 1...n{
            string += "0"
        }
        goalBinary = string + goalBinary
    } else if startBinary.count < goalBinary.count {
        var string = ""
        var n = goalBinary.count - startBinary.count
        for i in 1...n{
            string += "0"
        }
        startBinary = string + startBinary
    }

    func numbersOfFlips(_ start: String, _ goal: String, startIndx: Int, endIndx: Int) -> Int {
        var startIndx = startIndx
        var endIndx = endIndx - 1
        let startArray = Array(start)
        let goalArray = Array(goal)
        var answer = 0
        while startIndx <= endIndx {
            if startArray[startIndx] != goalArray[startIndx] {
                answer += 1
            }
            startIndx += 1
        }
        return answer
    }

    return numbersOfFlips(startBinary, goalBinary, startIndx: 0, endIndx: goalBinary.count)
}


minBitFlips(81, 87)
