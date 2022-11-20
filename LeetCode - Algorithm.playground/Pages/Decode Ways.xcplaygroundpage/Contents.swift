//: [Previous](@previous)

import Foundation


//class Solution {
//    func numDecodings(_ s: String) -> Int {
//        var letterDictionary: [Int: Character] = [1:"A",  2:"B", 3:"C", 4:"D",  5:"E",
//                                                  6:"F",  7:"G", 8:"H", 9:"I", 10:"J",
//                                                  11:"K", 12:"L", 13:"M",14:"N", 15:"O",
//                                                  16:"P", 17:"Q", 18:"R",19:"S", 20:"T",
//                                                  21:"U", 22:"V", 23:"W",24:"X", 25:"Y", 26: "Z",
//        ]
//
//
//        var arrayS = Array(s)
//        var inputArray = s.compactMap { $0.wholeNumberValue }
//        guard var sInteger = Int(s) else { return 0 }
//
//
//        if (arrayS.lastIndex(of: "0") != nil) && arrayS.first != "0" {
//            return 1
//        } else if arrayS.contains(where: { $0 == "0" }) {
//            return 0
//        }
//
//
//        var countDecoded: [Character] = []
//
//        for n in inputArray {
//            guard var currentValue = letterDictionary[n] else { return 0 }
//
//            if var sInteger = letterDictionary[sInteger] {
//                countDecoded.append(sInteger)
//            } else {
//                countDecoded.append(currentValue)
//            }
//        }
//
//        return countDecoded.count
//    }
//}
//
//let solution = Solution()
//solution.numDecodings("10")



class Solution1 {
    // - Complexity:
      //   - time: O(n), where n is the length of s.
      //   - space: O(n), where n is the length of s.

      func numDecodings(_ s: String) -> Int {
          let message = Array(s).compactMap { Int(String($0)) }
          let n = message.count

          guard n > 0, message[0] != 0 else { return 0 }
          guard n > 1 else { return 1 }

          var pre1 = 1
          var pre2 = 1
          var cur = 0

          for i in 1..<n {
              cur = 0
              if message[i] >= 1, message[i] <= 9 { cur += pre1 }

              let tmp = message[i-1] * 10 + message[i]
              if tmp >= 10, tmp <= 26 { cur += pre2 }

              pre2 = pre1
              pre1 = cur
          }

          return cur
      }
}

let solution = Solution1()
solution.numDecodings("27")

////: [Next](@next)
