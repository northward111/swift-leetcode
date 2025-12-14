// LeetCode Problem 1466
/*
*/
public func q1466MinReorder(_ n: Int, _ connections: [[Int]]) -> Int {
    var graph: [[(Int, Bool)]] = Array.init(repeating: [], count: n)
    for connection in connections {
        let o = connection[0], d = connection[1]
        graph[d].append((o, true))
        graph[o].append((d, false))
    }
    var stack: [Int] = [0]
    var ans = 0
    var visited: Set<Int> = [0]
    while let currentNode = stack.popLast() {
        let edges = graph[currentNode]
        for (neighborNode, isIn) in edges {
            if visited.contains(neighborNode) {
                continue
            }
            if !isIn {
                ans += 1
            }
            stack.append(neighborNode)
            visited.insert(neighborNode)
        }
    }
    return ans
}