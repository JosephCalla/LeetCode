//: [Previous](@previous)

import Foundation

func reverseWords(_ s: String) -> String {
    let stringArray = s.split(separator: " ")
    var reverse: String = ""
    for (index,word) in stringArray.enumerated() {
        var reverseWord = ""
        if index == 0 {
            reverseWord = String(word.reversed())
        } else {
            reverseWord = " " + String(word.reversed())
        }
        reverse = reverse + reverseWord
        
        
    }
    return reverse
}

reverseWords("Let's take LeetCode contest")

//: [Next](@next)
