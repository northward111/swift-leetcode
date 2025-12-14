// LeetCode Problem 199
/*
*/
public func q199RightSideView(_ root: TreeNode?) -> [Int] {
    var ans: [Int] = []
    guard let root = root else {
        return ans
    }
    ans.append(root.val)
    // node and its depth
    var queue: [(TreeNode, Int)] = [(root, 0)]
    while !queue.isEmpty {
        let (node, depth) = queue.removeFirst()
        // right one always comes first
        if depth == ans.count {
            ans.append(node.val)
        }
        if let right = node.right {
            queue.append((right, depth+1))
        }
        if let left = node.left {
            queue.append((left, depth+1))
        }
    }
    return ans
}