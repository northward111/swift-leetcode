// LeetCode Problem 643
/*
*/
public func q643FindMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    // TODO: Implement solution
    var curSum = nums[0..<k].reduce(0) { $0 + $1 }
    var maxSum = curSum
    for index in k..<nums.count {
        curSum = curSum + nums[index] - nums[index-k]
        maxSum = max(maxSum, curSum)
    }
    return Double(maxSum)/Double(k)
}