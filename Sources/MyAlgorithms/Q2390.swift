// LeetCode Problem 2390
/*
*/
public func q2390RemoveStars(_ s: String) -> String {
    // TODO: Implement solution
    var charStack: [Character] = []
    for char in s {
        if char == "*" {
            charStack.removeLast()
        }else {
            charStack.append(char)
        }
    }
    return String(charStack)
}