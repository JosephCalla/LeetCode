//: [Previous](@previous)

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var i = 0, zero = 0
    while i < nums.count - zero {
        if nums[i] == 0 {
            zero += 1
            nums.append(0)
            nums.remove(at: i)
        } else {
            i += 1
        }
    }
}


var nums = [0,1,0,3,12]
//var nums = [0]
//var nums = [0,0,1]
moveZeroes(&nums)

//: [Next](@next)
