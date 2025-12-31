// LeetCode Problem 3
/*
*/
func q3LengthOfLongestSubstring(_ s: String) -> Int {
    // implement solution
    let s = Array(s)
    var res = 0
    var start = 0, end = 0
    var map: [Character: Int] = [:]
    while end < s.count {
        let char = s[end]
        if let prev = map[char], prev >= start {
            start = prev + 1
        }
        map[char] = end
        res = max(res, end-start+1)
        end += 1
    }
    return res
}