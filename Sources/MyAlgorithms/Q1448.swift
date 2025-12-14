// LeetCode Problem 1448
/*
*/
public func q1448GoodNodes(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    // store node and max number seen so far
    var stack: [(TreeNode, Int)] = [(root, root.val)]
    var ans = 1
    func processChildNode(_ maxVal: Int, _ node: TreeNode) {
        let newMaxVal = max(maxVal, node.val)
        if newMaxVal == node.val {
            ans += 1
        }
        stack.append((node, newMaxVal))
    }
    while let (node, maxVal) = stack.popLast() {
        if let left = node.left {
            processChildNode(maxVal, left)
        }
        if let right = node.right {
            processChildNode(maxVal, right)
        }
    }
    return ans
}