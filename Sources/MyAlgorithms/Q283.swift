// LeetCode Problem 283
/*
Constraints:

1 <= nums.length <= 104
-231 <= nums[i] <= 231 - 1
*/
public func q283MoveZeroes(_ nums: inout [Int]){
    twoPointers(&nums)
}

func twoPointers(_ nums: inout [Int]){
    var insertPos = 0
    for num in nums {
        if num != 0 {
            nums[insertPos] = num
            insertPos += 1
        }
    }
    while insertPos < nums.count {
        nums[insertPos] = 0
        insertPos += 1
    }
}

func lame_implementation(_ nums: inout [Int]) {
    // TODO: Implement solution
    guard nums.count > 1 else{
        return
    }
    var i = 0
    var rightBoundIndex = nums.count-1
    // no need to check the last number
    while i <= rightBoundIndex {
        var stepSize = 1
        // if 0, every one after him moves left one step to pop it to the tail
        if nums[i] == 0 {
            // identify how many consecutive 0 to determine the step size
            // j is bound to not be out of index
            var j = i+1
            while j<nums.count && nums[j] == 0 {
                stepSize += 1
                j += 1
            }
            // if quit while because of oor, then return
            guard j<nums.count else{
                return
            }
            // print(nums)
            for k in i..<nums.count{
                if k + stepSize < nums.count {
                    nums[k] = nums[k+stepSize]
                }else{
                    nums[k] = 0
                }
            }
            rightBoundIndex -= stepSize
            // print(nums)
        }
        i += 1
    }
}