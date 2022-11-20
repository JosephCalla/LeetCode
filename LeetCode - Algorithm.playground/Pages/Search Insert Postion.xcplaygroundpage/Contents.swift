//: [Previous](@previous)

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var start = 0
        var end = nums.count // 4

        while start < end {
            let mid = start + (end - start) / 2

            if nums[mid] < target {
                start = mid + 1
            } else {
                end = mid
            }
        }
        return start
}


searchInsert([1,3,5,6], 7)
//: [Next](@next)
