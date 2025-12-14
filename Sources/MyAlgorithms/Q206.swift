// LeetCode Problem 206
/*
*/
public func q206ReverseList(_ head: ListNode?) -> ListNode? {
    return q206Iterative(head)
}

public func q206Iterative(_ head: ListNode?) -> ListNode? {
    // TODO: Implement solution
    var reverseHead: ListNode? = nil
    var iter: ListNode? = head
    while iter != nil {
        let next = iter?.next
        iter?.next = reverseHead
        reverseHead = iter
        iter = next
    }
    return reverseHead
}

public func q206Recursive(_ head: ListNode?) -> ListNode? {
    // TODO: Implement solution
    guard let node = head, let next = node.next else{
        return head
    }
    let reversedHead = q206Recursive(next)
    next.next = node
    node.next = nil
    return reversedHead
}