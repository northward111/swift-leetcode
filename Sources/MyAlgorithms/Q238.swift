// LeetCode Problem 238
/*
2 <= nums.length <= 105
-30 <= nums[i] <= 30
*/
func productExceptSelf(_ nums: [Int]) -> [Int] {
    var prefixProducts : [Int] = []
    prefixProducts.reserveCapacity(nums.count)
    var suffixProducts : [Int] = []
    suffixProducts.reserveCapacity(nums.count)
    var prefixProductTemp = 1
    var suffixProductTemp = 1
    // store prefix and suffix products for later use
    for i in 0..<nums.count {
        prefixProductTemp *= nums[i]
        prefixProducts.append(prefixProductTemp)
        suffixProductTemp *= nums[nums.count-1-i]
        suffixProducts.append(suffixProductTemp)
    }
    var ans : [Int] = []
    ans.reserveCapacity(nums.count)
    for i in 0..<nums.count {
        var left = 1
        var right = 1
        if i > 0 {
            left *= prefixProducts[i-1]
        }
        if i < nums.count-1 {
            right *= suffixProducts[nums.count-2-i]
        }
        ans.append(left*right)
    }
    return ans
}