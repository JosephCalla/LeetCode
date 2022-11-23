//: [Previous](@previous)

import Foundation


class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var expectedNums: [Int] = []
        var previusValue: Int?
        var sortedArray = nums.sorted(by: { $0 < $1})
        
        for value in sortedArray {
            if value != previusValue {
                expectedNums += [value]
            }
            previusValue = value
        }
        nums = expectedNums
        
        return expectedNums.count
    }
}


let solution = Solution()
var input = [1,1,2]
//var input = [0,0,1,1,1,2,2,3,3,4]
solution.removeDuplicates(&input)
//: [Next](@next)



//var names = ["Joseph", "Maribel", "Miguel"]
//for name in names {
//    print(name)
//}
