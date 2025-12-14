// LeetCode Problem 198
/*
*/
public func q198Rob(_ nums: [Int]) -> Int {
    let count = nums.count
    if count == 1 {
        return nums[0]
    }
    if count == 2 {
        return max(nums[0], nums[1])
    }
    var prev2 = (nums[0], true)
    var prev1 = nums[0] > nums[1] ? (nums[0], false) : (nums[1], true)
    for i in 2..<count {
        // assume that prev1 is not used
        var current = (prev1.0 + nums[i], true)
        // otherwise
        if prev1.1 {
            if prev2.0 + nums[i] > prev1.0 {
                current = (prev2.0 + nums[i], true)
            }else {
                current = (prev1.0, false)
            }
        }
        prev2 = prev1
        prev1 = current
    }
    return prev1.0
}