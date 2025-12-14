// LeetCode Problem 328
/*
*/
public func q328OddEvenList(_ head: ListNode?) -> ListNode? {
    // TODO: Implement solution
    guard head?.next != nil else{
        return head
    }
    let oddHead = head
    let evenHead = head?.next
    var oddTail = oddHead
    var evenTail = evenHead
    // whenever odd or even can not find its next, we should break, 
    // but before that time should be given to odd and even to both finish their update work
    while evenTail != nil && evenTail?.next != nil {
        oddTail?.next = evenTail?.next
        oddTail = oddTail?.next
        evenTail?.next = oddTail?.next
        evenTail = evenTail?.next
    }
    oddTail?.next = evenHead
    return oddHead
}