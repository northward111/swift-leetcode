// LeetCode Problem 746
/*
*/
public func q746MinCostClimbingStairs(_ cost: [Int]) -> Int {
    var minCost: [Int] = Array.init(repeating: 0, count: cost.count)
    minCost[1] = min(cost[0], cost[1])
    for i in 2..<minCost.count {
        minCost[i] = min(minCost[i-2] + cost[i-1], minCost[i-1] + cost[i])
    }
    return minCost.last!
}