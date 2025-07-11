// LeetCode Problem 75
/*
Constraints:

1 <= nums.length <= 5 * 10^5
-2^31 <= nums[i] <= 2^31 - 1
*/
public func increasingTriplet(_ nums: [Int]) -> Bool {
    guard nums.count > 2 else {
        return false
    }
    var candidateSingle = nums[0]
    var candidateCouple: (Int, Int)?
    for num in nums[1...] {
        if num < candidateSingle {
            candidateSingle = num
        }
        if let couple = candidateCouple {
            if num > couple.1 {
                return true
            }else if num > candidateSingle && num < couple.1 {
                candidateCouple = (candidateSingle, num)
            }
        }else {
            if num > candidateSingle {
                candidateCouple = (candidateSingle, num)
            }
        }
    }
    return false
}