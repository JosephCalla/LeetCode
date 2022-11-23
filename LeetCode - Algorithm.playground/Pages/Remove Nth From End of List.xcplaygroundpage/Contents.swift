//: [Previous](@previous)

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    // Move currentNode n steps into list
    var cur = head
    
    for _ in 0..<n {
        cur = cur?.next
    }
    
    if cur == nil {
        return head?.next
    }
    
    // Move both pointers until currentNode reaches the end of list
    var nodeBeforeRemoved = head
    
    while cur?.next != nil {
        cur = cur?.next
        nodeBeforeRemoved = nodeBeforeRemoved?.next
    }
  
    nodeBeforeRemoved?.next = nodeBeforeRemoved?.next?.next
    
    return head
}

var node5 = ListNode(5, nil)
var node4 = ListNode(4, node5)
var node3 = ListNode(3, node4)
var node2 = ListNode(2, node3)
var node1 = ListNode(1, node2)

removeNthFromEnd(node1, 2)

//: [Next](@next)
