//: [Previous](@previous)

import Foundation


func runningSum(_ nums: [Int]) -> [Int] {
    var arr : [Int] = []
    var sum = 0
    
    for n in nums {
        sum += n
        arr.append(sum)
    }
    return arr
}


runningSum([1,2,3,4])
//: [Next](@next)
