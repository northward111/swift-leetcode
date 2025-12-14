// LeetCode Problem 437
/*
*/
public func q437PathSum(_ root: TreeNode?, _ targetSum: Int) -> Int {
    guard let root = root else {
        return 0
    }
    // node and possible sums statistics so far
    var stack: [(TreeNode, Int, [Int: Int])] = [(root, 0, [0: 1])]
    var ans = 0
    while let (node, sum, prefixSumMap) = stack.popLast() {
        let newSum = sum + node.val
        ans += prefixSumMap[newSum - targetSum, default: 0]
        var newMap = prefixSumMap
        newMap[newSum, default: 0] += 1
        if let left = node.left {
            stack.append((left, newSum, newMap))
        }
        if let right = node.right {
            stack.append((right, newSum, newMap))
        }
    }
    return ans
}