import UIKit


class Solution {
    func romanToInt(_ s: String) -> Int {
        var romanValues: [Character: Int] = ["I" : 1,
                                             "V" : 5,
                                             "X" : 10,
                                             "L" : 50,
                                             "C" : 100,
                                             "D" : 500,
                                             "M" : 1000]
        
        var output = 0, prevCharValue = 0
        
        // "s" will give me each character per iteration
        for char in s {
            // romanValues[char] -> get value of dicctionary by key
            let chartValue = romanValues[char] ?? 0
            
            if chartValue <= prevCharValue {
                output += prevCharValue
            } else {
                output -= prevCharValue
            }
            prevCharValue = chartValue
        }
        
        output += prevCharValue
        return output
    }
}

let solution = Solution()
solution.romanToInt("LVIII")

