//: [Previous](@previous)

import Foundation

class Solution {

    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        
        var number = String(x).compactMap { $0.wholeNumberValue }
        var currentIndex = 0
        
        while currentIndex < number.count / 2 {
            if number[currentIndex] != number[number.count - currentIndex - 1] {
                return false
            }
            
            currentIndex += 1
        }
        
        return true
    }
}

let solution = Solution()
solution.isPalindrome(1232321)
//: [Next](@next)
