// LeetCode Problem 872
/*
*/

func extractLeafSequence(_ root: TreeNode?) -> [Int] {
    guard let root = root else{
        return []
    }
    var stack: [TreeNode] = [root]
    var sequence: [Int] = []
    while let node = stack.popLast() {
        var isLeaf = true
        if let right = node.right {
            isLeaf = false
            stack.append(right)
        }
        if let left = node.left {
            isLeaf = false
            stack.append(left)
        }
        if isLeaf {
            sequence.append(node.val)
        }
    }
    return sequence
}

public func q872LeafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    // TODO: Implement solution
    return extractLeafSequence(root1) == extractLeafSequence(root2)
}