// LeetCode Problem 151
/*
1 <= s.length <= 104
s contains English letters (upper-case and lower-case), digits, and spaces ' '.
There is at least one word in s.
*/
func reverseWords(_ s: String) -> String {
    var wordsList: [String] = []
    var i = s.startIndex
    var leftIndex: String.Index? = nil

    while i < s.endIndex {
        // Detect the start of a word
        if leftIndex == nil,
           (i == s.startIndex || s[s.index(before: i)] == " "),
           s[i] != " " {
            leftIndex = i
        }

        // Detect the end of a word
        if let left = leftIndex,
           s[i] != " ",
           (s.index(after: i) == s.endIndex || s[s.index(after: i)] == " ") {
            wordsList.insert(String(s[left...i]), at: 0)
            leftIndex = nil
        }

        i = s.index(after: i)
    }

    return wordsList.joined(separator: " ")
}