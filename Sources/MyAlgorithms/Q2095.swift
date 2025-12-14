// LeetCode Problem 2095
/*
*/



public func q2095DeleteMiddle(_ head: ListNode?) -> ListNode? {
    // TODO: Implement solution
    // return q2095Naive(head)
    return q2095TwoPointers(head)
}

public func q2095Naive(_ head: ListNode?) -> ListNode? {
    // TODO: Implement solution
    var nodeArray = Array<ListNode>()
    var node = head
    while let n = node {
        nodeArray.append(n)
        node = n.next
    }
    let middleIndex = nodeArray.count / 2
    if middleIndex == 0 {
        if nodeArray.count == 1 {
            return nil
        }else{
            return nodeArray[1]
        }
    }else{
        let left = nodeArray[middleIndex-1]
        var right: ListNode?
        if middleIndex+1 < nodeArray.count {
            right = nodeArray[middleIndex+1]
        }
        left.next = right
        return head
    }
}

public func q2095TwoPointers(_ head: ListNode?) -> ListNode? {
    // TODO: Implement solution
    if head?.next == nil {
        return nil
    }
    var slow = head
    var fast = head
    var prev: ListNode? = nil
    while fast != nil && fast?.next != nil {
        prev = slow
        slow = slow?.next
        fast = fast?.next?.next
    }
    // remove slow, so link prev and slow.next
    prev?.next = slow?.next
    return head
}