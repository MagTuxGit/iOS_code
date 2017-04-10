import UIKit

func generateRandomNumbers(from: Int, to: Int, quantity: Int?) -> [Int] {
    var randomNumbers = [Int]()
    
    let rangeSize = to-from+1
    var numberOfNumbers = (quantity==nil || quantity!>rangeSize) ? rangeSize : quantity!
    
    let lowerBound = UInt32(from)
    let upperBound = UInt32(to+1)
    
    while numberOfNumbers>0 {
        let randomNumber = Int(arc4random_uniform(upperBound-lowerBound) + lowerBound)
        if !randomNumbers.contains(randomNumber) {
            randomNumbers.append(randomNumber)
            numberOfNumbers -= 1
        }
    }
    
    return randomNumbers
}

let a = generateRandomNumbers(from: 10, to: 20, quantity: nil)
let b = generateRandomNumbers(from: 10, to: 20, quantity: 5)