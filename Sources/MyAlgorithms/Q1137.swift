// LeetCode Problem 1137
/*
*/
public func q1137Tribonacci(_ n: Int) -> Int {
    var dict: [Int: Int] = [0: 0, 1: 1, 2: 1]
    if let ans = dict[n] {
        return ans
    }
    for i in 3..<n {
        dict[i] = dict[i-1]! + dict[i-2]! + dict[i-3]!
    }
    return dict[n-1]! + dict[n-2]! + dict[n-3]!
}