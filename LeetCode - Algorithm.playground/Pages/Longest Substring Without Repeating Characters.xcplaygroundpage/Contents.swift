//: [Previous](@previous)

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
       guard !s.isEmpty else { return 0 } // If it is nil return 0
       var len = 0
       var chars = [Character]()
    
       for c in s {
           if let idx = chars.firstIndex(of: c) {
               print("idx: \(idx)")
               chars.removeSubrange(0...idx)
           }
           
           chars.append(c)
           len = max(len, chars.count)
       }
       return len
   }


 var s = "abcabcbb" // 3
// var s = "bbbbb" // 1
// var s = "pwwkew" // 3

lengthOfLongestSubstring(s)
//: [Next](@next)
