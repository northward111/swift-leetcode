func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var maxCandies = 0
    for candyCount in candies {
        maxCandies = max(maxCandies, candyCount)
    }
    var resultList : [Bool] = []
    resultList.reserveCapacity(candies.count)
    for candyCount in candies {
        resultList.append(candyCount+extraCandies >= maxCandies)
    }
    return resultList
}