//: [Previous](@previous)

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
       guard !s.isEmpty else { return 0 }
       var len = 0, chars = [Character]()
       for c in s {
           if let idx = chars.firstIndex(of: c) {
               chars.removeSubrange(0...idx)
           }
           chars.append(c)
           len = max(len, chars.count)
       }
       return len
   }

//
//func lengthOfLongestSubstring(_ s: String) -> Int {
//    if s.isEmpty {
//        return 0
//    }
//
//    if s == " " {
//        return 1
//    }
//
//    if s.count == 1 {
//        return 1
//    }
//
//    var seen: [Character: Bool] = [:]
//    var chars = Array(s)
//
//    for i in 0..<chars.count {
//       if seen[chars[i]] != true {
//           seen[chars[i]] = true
//       }
//    }
//
////         for char in chars {
////             if seen[char] != true {
////              seen[char] = true
////             }
////         }
//
//    return seen.count
//}


//: [Next](@next)
