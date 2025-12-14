// LeetCode Problem 104
/*
*/
public func q104MaxDepth(_ root: TreeNode?) -> Int {
    // TODO: Implement solution
    guard let root = root else {
        return 0
    }
    var stack: [(TreeNode, Int)] = [(root, 1)]
    var maxDepth = 0
    while !stack.isEmpty {
        let (node, depth) = stack.removeLast()
        maxDepth = max(maxDepth, depth)
        if let left = node.left {
            stack.append((left, depth+1))
        }
        if let right = node.right {
            stack.append((right, depth+1))
        }
    }
    return maxDepth
}