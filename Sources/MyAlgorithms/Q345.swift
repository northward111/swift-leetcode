// LeetCode Problem 345
/*
1 <= s.length <= 3 * 10^5
s consist of printable ASCII characters.
*/
func reverseVowels(_ s: String) -> String {
    // TODO: Implement solution
    var result = [Character](s)
    let vowels : Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var leftIndex = 0
    var rightIndex = result.count-1
    while leftIndex < rightIndex {
        while !vowels.contains(result[leftIndex]) {
            leftIndex += 1
            guard leftIndex < rightIndex else {
                return String(result)
            }
        }
        while !vowels.contains(result[rightIndex]) {
            rightIndex -= 1
            guard rightIndex > leftIndex else {
                return String(result)
            }
        }
        let tmp = result[leftIndex]
        result[leftIndex] = result[rightIndex]
        result[rightIndex] = tmp
        leftIndex += 1
        rightIndex -= 1
    }
    return String(result)
}