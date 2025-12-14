// LeetCode Problem 62
/*
*/
public func q62UniquePaths(_ m: Int, _ n: Int) -> Int {
    // matrix of size m*n
    var matrix: [[Int]] = Array.init(repeating: Array.init(repeating: 0, count: n), count: m)
    matrix[0][0] = 1
    for i in 0..<m {
        for j in 0..<n {
            if i==0 && j==0 {
                continue
            }
            var pathCount = 0
            if i > 0 {
                pathCount += matrix[i-1][j]
            }
            if j > 0 {
                pathCount += matrix[i][j-1]
            }
            matrix[i][j] = pathCount
        }
    }
    return matrix[m-1][n-1]
}