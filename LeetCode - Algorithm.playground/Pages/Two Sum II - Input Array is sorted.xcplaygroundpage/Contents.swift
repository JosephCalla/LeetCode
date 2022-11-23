//: [Previous](@previous)

import Foundation

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var nums = numbers
    var left = 0
    var right = numbers.count-1
    
    while left <= right {
        var sum = nums[left] + nums[right]
        
        if sum == target {
            return [left + 1, right + 1]
        } else if sum < target {
            left+=1
        } else {
            right-=1
        }
    }
    return [0]
}

//var num = [2,7,11,15]
var num = [2,3,4]
twoSum(num, 6)
//: [Next](@next)
