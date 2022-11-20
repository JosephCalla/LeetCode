//: [Previous](@previous)

import Foundation

public class ListNode {
    
    public var val: Int
    
    public var next: ListNode?
    
    public init() {
        self.val = 0; self.next = nil;
    }
    
    public init(_ val: Int) {
        self.val = val; self.next = nil;
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val; self.next = next;
    }
}
//func middleNode(_ head: ListNode?) -> ListNode? {
//    var (fast,slow) = (head, head)
//
//    while(fast?.next != nil) {
//        fast = fast?.next?.next
//        slow = slow?.next
//    }
//    
//    return slow
//    }

func middleNode(_ head: ListNode?) -> ListNode? {
    var cur = head
    var middeNode = count(cur) / 2
    var detectCount = 0
    var beforeMiddleNode:ListNode?
    var afterMiddleNode:ListNode?
    
    while detectCount < middeNode {
        beforeMiddleNode = ListNode(cur?.val ?? 0, cur?.next)
        cur = cur?.next
        print("beforeMiddleNode -> \(beforeMiddleNode?.val)")
        detectCount+=1
    }
    
    while cur != nil {
        afterMiddleNode = ListNode(cur?.val ?? 0, afterMiddleNode)
        print("\(afterMiddleNode?.val)")
        cur = cur?.next
    }
    
    var currenNode = afterMiddleNode
    var prev: ListNode?
    var next: ListNode?
    
    while currenNode != nil {
        next = currenNode?.next
        currenNode?.next = prev
        prev = currenNode
        currenNode = next
    }
    
    return prev

}

func count(_ head: ListNode?) -> Int {
    var cur = head
    var counter = 0
    
    while cur != nil {
        counter += 1
        cur = cur?.next
    }
    
    return counter
}

var node6 = ListNode(6, nil)
var node5 = ListNode(5, node6)
var node4 = ListNode(4, node5)
var node3 = ListNode(3, node4)
var node2 = ListNode(2, node3)
var node1 = ListNode(1, node2)

var headMock = [1,2,3,4,5]
middleNode(node1)

//: [Next](@next)
