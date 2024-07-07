import UIKit

func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
    var result = numBottles
    var fullBottles = numBottles
    
    
    while fullBottles / numExchange != 0 {
        var bottlesExchanged = fullBottles / numExchange
        result += bottlesExchanged
        var bottlesLeft = fullBottles - (numExchange * bottlesExchanged)
        fullBottles = bottlesLeft + bottlesExchanged
    }
    return result
}


let numBottles = 15
let numExchange = 4
numWaterBottles(numBottles, numExchange)

print(3 / 4)
