// LeetCode Problem 1143
/*
*/
func isSubsequence(_ sequence: String, _ mother: String) -> Bool {
    var mother = mother
    for (i, char) in sequence.enumerated() {
        if let j = mother.firstIndex(of: char) {
            if i == sequence.count-1 {
                return true
            }
            mother = String(mother[mother.index(after: j)...])
        }else {
            return false
        }
    }
    return true
}

public func q1143LongestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    let text2 = Array(text2)
    let n = text2.count
    var dp: [String] = Array(repeating: "", count: n)
    if text1.contains(text2[0]) {
        dp[0] = String(text2[0])
    }
    for j in 1..<n {
        let leftLCS = dp[j - 1]
        let candidate = leftLCS + String(text2[j])
        dp[j] = isSubsequence(candidate, text1) ? candidate : leftLCS
    }
    return dp.last!.count
}