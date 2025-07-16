// LeetCode Problem 1207
/*
*/
public func q1207UniqueOccurrences(_ arr: [Int]) -> Bool {
    // TODO: Implement solution
    var occurrencesDic: [Int:Int] = [:]
    for num in arr {
        occurrencesDic[num] = (occurrencesDic[num] ?? 0) + 1
    }
    var occurrencesSet :Set<Int> = []
    for (_, occurences) in occurrencesDic {
        if occurrencesSet.contains(occurences) {
            return false
        }else {
            occurrencesSet.insert(occurences)
        }
    }
    return true
}