// LeetCode Problem 11
/*
Constraints:

n == height.length
2 <= n <= 10^5
0 <= height[i] <= 10^4
*/
public func q11MaxArea(_ height: [Int]) -> Int {
    func calcArea(i:Int,j:Int)->Int{
        return min(height[i], height[j])*(j-i)
    }
    // TODO: Implement solution
    var left = 0, right = height.count-1
    var ans = calcArea(i: left, j: right)
    while right > left {
        // move the right
        if height[left] > height[right] {
            right -= 1
        }else {
            // move the left
            left += 1
        }
        ans = max(ans, calcArea(i: left, j: right))
    }
    return ans
}