// LeetCode Problem 1372
/*
*/
enum Direction {
    case left
    case right
    case any
}

public func q1372LongestZigZag(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    var stack = [(root, 0, Direction.any)]
    var ans = 0
    while let (node, length, direction) = stack.popLast() {
        ans = max(ans, length)
        if let left = node.left {
            let newLength = (direction == .left) ? 1 : (length + 1)
            stack.append((left, newLength, .left))
        }
        if let right = node.right {
            let newLength = (direction == .right) ? 1 : (length + 1)
            stack.append((right, newLength, .right))
        }
    }
    return ans
}