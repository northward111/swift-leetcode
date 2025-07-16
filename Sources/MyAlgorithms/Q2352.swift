// LeetCode Problem 2352
/*
*/
public func q2352EqualPairs(_ grid: [[Int]]) -> Int {
    // TODO: Implement solution
    // build row hashmap, key is row value, value is count
    var rowDict: [[Int]:Int] = [:], colDict: [[Int]:Int] = [:]
    // build row and col hashmap
    for i in 0 ..< grid.count {
        let row = grid[i]
        rowDict[row] = (rowDict[row] ?? 0) + 1
        let col = grid.map{ $0[i] }
        colDict[col] = (colDict[col] ?? 0) + 1
    }
    let intersections = Set(rowDict.keys).intersection(Set(colDict.keys))
    var ans = 0
    for intersection in intersections {
        if let rowEntry = rowDict[intersection], let colEntry = colDict[intersection] {
            ans += rowEntry * colEntry
        }
    }
    return ans
}