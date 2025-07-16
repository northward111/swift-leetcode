// LeetCode Problem 1493
/*
*/
public func q1493LongestSubarray(_ nums: [Int]) -> Int {
    // TODO: Implement solution
    var left = 0, ans = 0, zeroCount=0
    for right in 0..<nums.count {
        if nums[right] == 0 {
            zeroCount += 1
        }
        while zeroCount > 1 {
            if nums[left] == 0 {
                zeroCount -= 1
            }
            left += 1
        }
        ans = max(ans, right-left+1-1)
    }
    return ans
}