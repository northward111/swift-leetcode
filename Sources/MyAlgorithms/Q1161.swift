// LeetCode Problem 1161
/*
*/
public func q1161MaxLevelSum(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }
    var currentLevel = 0
    var maxSum = Int.min
    var ans = 0
    var queue: [TreeNode] = [root]
    var index = 0
    while index < queue.count {
        currentLevel += 1
        let levelCount = queue.count - index
        var sum = 0
        for _ in 0..<levelCount {
            let node = queue[index]
            index += 1
            sum += node.val
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
        }
        if sum > maxSum {
            maxSum = sum
            ans = currentLevel
        }
    }
    return ans
}