// LeetCode Problem 450
/*
*/
public func q450DeleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
    guard let root = root else {
        return nil
    }
    var parentNode: TreeNode?
    var isCurrentNodeLeft = false
    var currentNode = root
    while true {
        if key == currentNode.val {
            break
        }else if key < currentNode.val {
            if let left = currentNode.left {
                parentNode = currentNode
                isCurrentNodeLeft = true
                currentNode = left
            }else {
                return root
            }
        }else {
            if let right = currentNode.right {
                parentNode = currentNode
                isCurrentNodeLeft = false
                currentNode = right
            }else {
                return root
            }
        }
    }
    // currentNode is the found node and to be removed
    guard let left = currentNode.left, let right = currentNode.right else {
        var substitute: TreeNode?
        if currentNode.left == nil {
            substitute = currentNode.right
        }else {
            substitute = currentNode.left
        }
        if let parentNode = parentNode {
            if isCurrentNodeLeft {
                parentNode.left = substitute
                return root
            }else {
                parentNode.right = substitute
                return root
            }
        }else {
            return substitute
        }
    }
    var noLeftNode = right
    while let temp = noLeftNode.left {
        noLeftNode = temp
    }
    noLeftNode.left = left
    if let parentNode = parentNode {
        if isCurrentNodeLeft {
            parentNode.left = right
            return root
        }else {
            parentNode.right = right
            return root
        }
    }else {
        return right
    }
}