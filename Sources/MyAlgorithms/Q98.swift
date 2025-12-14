// LeetCode Problem 98
/*
*/
public func q98IsValidBST(_ root: TreeNode?) -> Bool {
    guard let root = root else {
        return true
    }
    // cur node, lower limit, upper limit
    var stack = [(root, Int.min, Int.max)]
    while let (node, lowerLimit, upperLimit) = stack.popLast() {
        guard node.val > lowerLimit && node.val < upperLimit else{
            return false
        }
        if let left = node.left {
            stack.append((left, lowerLimit, node.val))
        }
        if let right = node.right {
            stack.append((right, node.val, upperLimit))
        }
    }
    return true
}