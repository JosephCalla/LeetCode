//: [Previous](@previous)

import Foundation

func reverseString(_ s: inout [Character]) {
    var reveredChars : [Character] = []
    var first = 0
    var right = s.count - 1
    
    while first <= right {
        
        reveredChars.append(s[right])
        right-=1
    }
    s = reveredChars
    print(reveredChars)
    
}
//var s: [Character] = ["h","e","l","l","o"]
var s: [Character] = ["H","a","n","n","a","h"]
reverseString(&s)

//: [Next](@next)
