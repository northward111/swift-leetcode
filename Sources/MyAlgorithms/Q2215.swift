// LeetCode Problem 2215
/*
*/
public func q2215FindDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
    // TODO: Implement solution
    let set1 = Set(nums1), set2 = Set(nums2)
    var ans1:Set<Int> = [], ans2:Set<Int> = []
    for num in nums1 {
        if !set2.contains(num) && !ans1.contains(num) {
            ans1.insert(num)
        }
    }
    for num in nums2 {
        if !set1.contains(num) && !ans2.contains(num) {
            ans2.insert(num)
        }
    }
    return [Array(ans1), Array(ans2)]
}