/*
For two strings s and t, we say "t divides s" if and only if s = t + t + t + ... + t + t (i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.



Example 1:

Input: str1 = "ABCABC", str2 = "ABC"
Output: "ABC"
Example 2:

Input: str1 = "ABABAB", str2 = "ABAB"
Output: "AB"
Example 3:

Input: str1 = "LEET", str2 = "CODE"
Output: ""


Constraints:

1 <= str1.length, str2.length <= 1000
str1 and str2 consist of English uppercase letters.
*/

// str1 is shorter than str2 by convention
func checkIf(_ str1: Substring, divides str2: String) -> Bool {
    let stepSize = str1.count
    var index: String.Index = str2.startIndex
    while index < str2.endIndex {
        guard let index2 = str2.index(index, offsetBy: stepSize, limitedBy: str2.endIndex) else {
            return false
        }
        let subStr = str2[index..<index2]
        guard str1.elementsEqual(subStr) else {
            return false
        }
        index = index2
    }
    return true
}

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    var result = ""
    var index1 = str1.startIndex
    var index2 = str2.startIndex
    while index1 < str1.endIndex && index2 < str2.endIndex {
        let prefix1 = str1.prefix(through: index1)
        let prefix2=str2.prefix(through: index2)
        guard prefix1.elementsEqual(prefix2) else {
            break
        }
        if checkIf(prefix1, divides: str1) && checkIf(prefix1, divides: str2) {
            result = String(prefix1)
        }        
        index1=str1.index(after: index1)
        index2=str2.index(after: index2)
    }
    return result
}