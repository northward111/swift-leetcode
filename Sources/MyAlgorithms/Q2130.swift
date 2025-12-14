// LeetCode Problem 2130
/*
*/
func reverseLinkedList(_ head: ListNode?) -> ListNode? {
    var reversedHead: ListNode? = nil
    var iter = head
    while let it = iter {
        let next = it.next
        it.next = reversedHead
        reversedHead = it
        iter = next
    }
    return reversedHead
}

public func q2130PairSum(_ head: ListNode?) -> Int {
    // TODO: Implement solution
    var slow = head, fast = head
    while fast?.next?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    let rightHalfHead = slow?.next
    let reversedRightHalfHead = reverseLinkedList(rightHalfHead)
    var iterLeft = head
    var iterRight = reversedRightHalfHead
    var res = Int.min
    while let itLeft = iterLeft, let itRight = iterRight{
        let curSum = itLeft.val + itRight.val
        res = max(res, curSum)
        iterLeft = itLeft.next
        iterRight = itRight.next
    }
    return res
}