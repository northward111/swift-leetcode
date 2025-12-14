// LeetCode Problem 547
/*
*/
public func q547FindCircleNum(_ isConnected: [[Int]]) -> Int {
    let n = isConnected.count
    var visited: [Bool] = Array.init(repeating: false, count: n)
    // get the next seed city
    func nextSeed() -> Int? {
        return visited.firstIndex {
            !$0
        }
    }
    var ans = 0
    while let seed = nextSeed() {
        ans += 1
        visited[seed] = true
        var stack: [Int] = [seed]
        while !stack.isEmpty {
            let currentCity = stack.removeLast()
            for (index, connected) in isConnected[currentCity].enumerated() {
                if connected == 1 && index != currentCity && !visited[index] {
                    visited[index] = true
                    stack.append(index)
                }
            }
        }
    }
    return ans
}