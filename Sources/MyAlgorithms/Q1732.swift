// LeetCode Problem 1732
/*
*/
public func q1732LargestAltitude(_ gain: [Int]) -> Int {
    // TODO: Implement solution
    var maxAltitude = 0
    var curAltitude = 0
    for i in 0..<gain.count {
        curAltitude += gain[i]
        maxAltitude = max(maxAltitude, curAltitude)
    }
    return maxAltitude
}