//: [Previous](@previous)

import Foundation
//https://leetcode.com/problems/rotate-array/?envType=study-plan&id=algorithm-i
func rotate(_ nums: inout [Int], _ k: Int) {
    if k < 0 {
        return
    }
    var newNums = nums
    for _ in 1...k {
        var last = newNums.last
        newNums.insert(last ?? 0, at: 0)
        newNums.remove(at: newNums.count-1)
//        print(newNums)
    }
    print(newNums)
}

var myArray = [1,2,3,4,5,6,7]
rotate(&myArray, 3)
//: [Next](@next)
