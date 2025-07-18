// LeetCode Problem 2095
/*
*/

//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

public func q2095DeleteMiddle(_ head: ListNode?) -> ListNode? {
    // TODO: Implement solution
    var nodeArray = Array<ListNode>()
    var node = head
    while let n = node {
        nodeArray.append(n)
        node = n.next
    }
    let middleIndex = nodeArray.count / 2
    

}