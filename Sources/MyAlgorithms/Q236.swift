// LeetCode Problem 236
/*
*/
public func q236LowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    guard let root = root, let p = p, let q = q else {
        return nil
    }
    // node and corresponding node chain
    var stack: [(TreeNode, [TreeNode])] = [(root, [root])]
    var pChain: [TreeNode]?, qChain: [TreeNode]?
    while !stack.isEmpty {
        let (current,nodeChain) = stack.removeLast()
        if current === p {
            pChain = nodeChain
        } else if current === q {
            qChain = nodeChain
        }
        // if both p and q find their chains, it's time to calculate the answer
        if let pChain = pChain, let qChain = qChain {
            var ans: TreeNode?
            for i in 0..<min(pChain.count, qChain.count) {
                if pChain[i] === qChain[i] {
                    ans = pChain[i]
                }else {
                    break
                }
            }
            return ans
        }
        if let left = current.left {
            stack.append((left, nodeChain + [left]))
        }
        if let right = current.right {
            stack.append((right, nodeChain + [right]))
        }
    }
    fatalError("chain of either p or q not found")
}