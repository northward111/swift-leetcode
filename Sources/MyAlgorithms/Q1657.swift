// LeetCode Problem 1657
/*
*/
public func q1657CloseStrings(_ word1: String, _ word2: String) -> Bool {
    // TODO: Implement solution
    guard word1.count == word2.count else {
        return false
    }
    func calcOccurrencesDic<T>(_ word: [T]) -> [T: Int] {
        var occurrencesDic: [T: Int] = [:]
        for char in word {
            occurrencesDic[char] = (occurrencesDic[char] ?? 0) + 1
        }
        return occurrencesDic
    }
    let occurrencesOfChar1 = calcOccurrencesDic(Array(word1)),
        occurrencesOfChar2 = calcOccurrencesDic(Array(word2))
    guard occurrencesOfChar1.keys.sorted() == occurrencesOfChar2.keys.sorted() else {
        return false
    }
    let occurrencesOfOccurrence1 = calcOccurrencesDic(Array(occurrencesOfChar1.values)),
    occurrencesOfOccurrence2 = calcOccurrencesDic(Array(occurrencesOfChar2.values))
    return occurrencesOfOccurrence1 == occurrencesOfOccurrence2
}