//: [Previous](@previous)

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var reapeatingValue: [Int] = []
        var sortedNums = nums.sorted(by: { $0 < $1})
        
        for num in sortedNums {
            if num != val {
                reapeatingValue += [num]
            }
        }
        
        nums = reapeatingValue
        
        return reapeatingValue.count
    }
}


let solution = Solution()
var input = [3,2,2,3]
//var input = [0,0,1,1,1,2,2,3,3,4]
solution.removeElement(&input, 3)
//: [Next](@next)
