// LeetCode Problem 700
/*
*/
public func q700SearchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let root = root else {
        return nil
    }
    var current = root
    while true {
        if val == current.val {
            return current
        }else if val < current.val {
            if let left = current.left {
                current = left
            }else {
                return nil
            }
        }else {
            if let right = current.right {
                current = right
            }else {
                return nil
            }
        }
    }
}