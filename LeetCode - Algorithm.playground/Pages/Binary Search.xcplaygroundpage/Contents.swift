//: [Previous](@previous)

import Foundation

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else {
            return -1
        }
        
        var left = 0
        var right = nums.count - 1
        
        
        while left <= right {
            let mid = (right + left) / 2
            
            if nums[mid] == target {
                return mid
            }
            
            if target < nums[mid] {
                right = mid - 1
            }
            if target > nums[mid] {
                left = mid + 1
            }
            
    
        }
        // We didn't find it
        return -1
    }
}

var solution = Solution()
solution.search([2,5], 5)
