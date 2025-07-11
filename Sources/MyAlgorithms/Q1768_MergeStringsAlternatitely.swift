// The Swift Programming Language
// https://docs.swift.org/swift-book
// https://leetcode.com/problems/merge-strings-alternately
// LeetCode Problem 1768: Merge Strings Alternately
/*
You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

Return the merged string.



Example 1:

Input: word1 = "abc", word2 = "pqr"
Output: "apbqcr"
Explanation: The merged string will be merged as so:
word1:  a   b   c
word2:    p   q   r
merged: a p b q c r
Example 2:

Input: word1 = "ab", word2 = "pqrs"
Output: "apbqrs"
Explanation: Notice that as word2 is longer, "rs" is appended to the end.
word1:  a   b
word2:    p   q   r   s
merged: a p b q   r   s
Example 3:

Input: word1 = "abcd", word2 = "pq"
Output: "apbqcd"
Explanation: Notice that as word1 is longer, "cd" is appended to the end.
word1:  a   b   c   d
word2:    p   q
merged: a p b q c   d


Constraints:

1 <= word1.length, word2.length <= 100
word1 and word2 consist of lowercase English letters.
*/

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var result: String = ""
    // use indices to trace the progress on either word
    var index1 = word1.startIndex
    var index2 = word2.startIndex
    while index1 < word1.endIndex && index2 < word2.endIndex {
        result.append(word1[index1])
        result.append(word2[index2])
        // advance the indices
        index1 = word1.index(after: index1)
        index2 = word2.index(after: index2)
    }
    // check whether there are any characters left in word1
    while index1 < word1.endIndex {
        result.append(word1[index1])
        index1 = word1.index(after: index1)
    }
    // check for word2 as well
    while index2 < word2.endIndex {
        result.append(word2[index2])
        index2 = word2.index(after: index2)
    }
    return result
}