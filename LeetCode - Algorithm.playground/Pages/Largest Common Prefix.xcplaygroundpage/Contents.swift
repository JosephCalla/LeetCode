//: [Previous](@previous)

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 { return "" }
        if strs.count == 1 { return strs[0] }
        
        print("Official Strs -> \(strs)")

        var minStr = strs.min { $0.count < $1.count }!
        print("minStr -> \(minStr) (Global variable)")
        while !minStr.isEmpty {
            var shouldReturn = false
            
            for str in strs {
                print("str -> \(str) (For loop) - minStr -> \(minStr)")
            
                print("================ BEFORE IF =====================")
                if !str.hasPrefix(minStr) {
                    print("minStr -> \(minStr) (after if)")
                    minStr.removeLast()
                    print("minStr -> \(minStr) (removeLast())")
                    shouldReturn = false
                    print("================= BREAK ====================")

                    break
                } else {
                    print("================ RETURN =====================")
                    shouldReturn = true
                }
                
            }
            
            if shouldReturn {
                return minStr
            }
        }
        
        return minStr
    }
}

let solution = Solution()
solution.longestCommonPrefix(["flower","flow","flight"])
//: [Next](@next)
