/// double end queue, using two arrays under the hood
struct Deque<T> {
    var front: [T] = []
    var back: [T] = []
    var isEmpty: Bool {
        return front.isEmpty && back.isEmpty
    }
    var count: Int {
        return front.count + back.count
    }

    mutating func pushBack(_ val: T) {
        back.append(val)
    }

    mutating func pushFront(_ val: T) {
        front.append(val)
    }

    mutating func popBack() -> T? {
        if back.isEmpty {
            back = front.reversed()
            front = []
        }
        return back.popLast()
    }

    mutating func popFront() -> T? {
        if front.isEmpty {
            front = back.reversed()
            back = []
        }
        return front.popLast()
    }

    func peekFront() -> T? {
        return front.last ?? back.first
    }

    func peekBack() -> T?{
        return back.last ?? front.first
    }
}

//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

public func headFrom(valArray: [Int]) -> ListNode? {
    guard valArray.count > 0 else{
        return nil
    }
    let head = ListNode(valArray[0])
    var curNode = head
    for val in valArray.dropFirst(){
        curNode.next = ListNode(val)
        curNode = curNode.next!
    }
    return head
}

public func valArrayFrom(listNodeHead: ListNode?) -> [Int]{
    var res = Array<Int>()
    var node = listNodeHead
    while let n = node {
        res.append(n.val)
        node = n.next
    }
    return res
}

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }

    public static func buildTree(from array: [Int?]) -> TreeNode? {
        guard !array.isEmpty, let first = array[0] else {
            return nil
        }
        let root = TreeNode(first)
        var queue: [TreeNode] = [root]
        var index = 1
        while !queue.isEmpty &&  index < array.count {
            let current = queue.removeFirst()
            if index < array.count, let leftValue = array[index] {
                let left = TreeNode(leftValue)
                current.left = left
                queue.append(left)
            }
            index += 1
            if index < array.count, let rightValue = array[index] {
                let right = TreeNode(rightValue)
                current.right = right
                queue.append(right)
            }
            index += 1
        }
        return root
    }
}
