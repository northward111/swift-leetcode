// LeetCode Problem 1004
/*
*/
public func q1004LongestOnes(_ nums: [Int], _ k: Int) -> Int {
    return q1004SlidingWindow(nums, k)
}


func q1004Naive(_ nums: [Int], _ k: Int) -> Int {
    // TODO: Implement solution
    var zeroIndices: [Int] = []
    for (index, num) in nums.enumerated() {
        if num == 0 {
            zeroIndices.append(index)
        }
    }
    // if too few zeros, then all can be made 1
    guard zeroIndices.count > k else {
        return nums.count
    }
    var ans = 0
    guard k != 0 else{
        for i in 0..<zeroIndices.count {
            if i == 0 {
                ans = max(ans, zeroIndices[i])
            }else{
                ans = max(ans, zeroIndices[i]-zeroIndices[i-1]-1)
            }
            if i == zeroIndices.count-1 {
                ans = max(ans, nums.count-1-zeroIndices[i])
            }
        }
        return ans
    }
    // slide through zeroIndices of window size k
    for right in k - 1..<zeroIndices.count {
        let left = right - k + 1
        let middleOneCount = zeroIndices[right] - zeroIndices[left] + 1
        // check how many leading ones on the left
        var leadingOneCount = 0
        var leadingIndex = zeroIndices[left] - 1
        while leadingIndex >= 0 {
            if nums[leadingIndex] == 1 {
                leadingOneCount += 1
            }else{
                break
            }
            leadingIndex -= 1
        }
        var trailingOneCount = 0
        var trailingIndex = zeroIndices[right] + 1
        while trailingIndex < nums.count {
            if nums[trailingIndex] == 1 {
                trailingOneCount += 1
            }else{
                break
            }
            trailingIndex += 1
        }
        let curOneCount = leadingOneCount + middleOneCount + trailingOneCount
        ans = max(ans, curOneCount)
    }
    return ans
}

func q1004SlidingWindow(_ nums: [Int], _ k: Int) -> Int {
    var ans = 0
    var left = 0
    var zeroCount = 0
    for right in 0..<nums.count {
        if nums[right] == 0 {
            zeroCount += 1
        }
        // shrink the left until zeroCount is k
        while zeroCount > k {
            if nums[left] == 0 {
                zeroCount -= 1
            }
            left += 1
        }
        ans = max(ans, right-left+1)
    }
    return ans
}