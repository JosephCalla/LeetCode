//: [Previous](@previous)

import Foundation

//func isValid(_ s: String) -> Bool {
//    let sArray = Array(s)
//
//    if sArray.contains("()") ||  sArray.contains("[]") || sArray.contains("{}") {
//        return true
//    }
//    return false
//}


func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    let dict: [Character: Character] = ["(": ")", "{": "}", "[": "]"]
    
    for char in s {
        switch char {
        case "(", "{", "[":
            stack.append(char)
        case ")", "}", "]":
            guard !stack.isEmpty,
                  dict[stack.removeLast()] == char else {
                return false
            }
        default:
            return false
        }
    }
    return stack.isEmpty
}


isValid("(){}}{")

//: [Next](@next)
