// LeetCode Problem 392
/*
Constraints:

0 <= s.length <= 100
0 <= t.length <= 104
s and t consist only of lowercase English letters.
*/
public func q392IsSubsequence(_ s: String, _ t: String) -> Bool {
    // TODO: Implement solution
    guard s.count != 0 else{
        return true
    }
    guard s.count <= t.count else{
        return false
    }
    var indexT=t.startIndex
    for charS in s {
        var found = false
        while indexT < t.endIndex {
            let charT = t[indexT]
            indexT = t.index(after: indexT)
            if charT == charS {
                found = true
                break
            }
        }
        if !found {
            return false
        }
    }
    return true
}