//: [Previous](@previous)

import Foundation

class VersionControl {
    func isBadVersion(_ version: Int) -> Bool{ return false}
}

class Solution: VersionControl {
      func firstBadVersion(_ n: Int) -> Int {
        var versions: [Bool] = []
        
          for item in 0..<n {
              var isBadVersion = isBadVersion(item)
              versions.append(isBadVersion)
          }
          
          return versions.firstIndex(where: { $0 == true }) ?? 0
    }
}

var solution = Solution()
solution.firstBadVersion(5)
//: [Next](@next)
