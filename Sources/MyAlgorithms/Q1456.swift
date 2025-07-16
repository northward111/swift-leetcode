// LeetCode Problem 1456
/*
*/
public func q1456MaxVowels(_ s: String, _ k: Int) -> Int {
    // TODO: Implement solution
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    var curVowels = s.prefix(k).reduce(0){$0 + (vowels.contains($1) ? 1 : 0)}
    var ans = curVowels
    var index = s.index(s.startIndex, offsetBy: k)
    while index < s.endIndex {
        if vowels.contains(s[index]) {
            curVowels += 1
        }
        if vowels.contains(s[s.index(index, offsetBy: -k)]) {
            curVowels -= 1
        }
        ans = max(ans, curVowels)
        index = s.index(after: index)
    }
    return ans
}