// LeetCode Problem 15
/*
*/
public func q15ThreeSum(_ nums: [Int]) -> [[Int]] {
    let nums = nums.sorted()
    let n = nums.count
    var ans: [[Int]] = []
    for i in 0..<n {
        if i > 0 && nums[i] == nums[i-1] {
            continue
        }
        let target = -nums[i]
        var left = i+1
        var right = n-1
        while left < right {
            if 2*nums[right] < target || 2*nums[left] > target {
                break
            }
            let pairSum = nums[left] + nums[right]
            func advanceLeft() {
                var leftToBe = left + 1
                while leftToBe < n && nums[leftToBe] == nums[left] {
                    leftToBe += 1
                }
                left = leftToBe
            }
            func advanceRight() {
                var rightToBe = right - 1
                while rightToBe >= 0 && nums[rightToBe] == nums[right] {
                    rightToBe -= 1
                }
                right = rightToBe
            }
            if pairSum == target {
                ans.append([nums[i], nums[left], nums[right]])
                advanceLeft()
                advanceRight()
                continue
            }else if pairSum < target {
                advanceLeft()
            }else {
                advanceRight()
            }
        }
    }
    return ans
}