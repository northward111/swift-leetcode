// LeetCode Problem 724
/*
*/
public func q724PivotIndex(_ nums: [Int]) -> Int {
    let totalSum = nums.reduce(0, +)
    var leftSum = 0
    for (i, num) in nums.enumerated() {
        if leftSum == totalSum - leftSum - num {
            return i
        }
        leftSum += num
    }
    return -1
}