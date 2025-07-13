// LeetCode Problem 1679
/*
*/
public func q1679MaxOperations(_ nums: [Int], _ k: Int) -> Int {
    // TODO: Implement solution
    return q1679HashTable(nums, k)
}

func q1679HashTable(_ nums: [Int], _ k: Int) -> Int {
    var ans = 0
    var regDic:[Int:Int] = [:]
    for num in nums {
        let complementNum = k-num
        if let count = regDic[complementNum] {
            ans += 1
            if count == 1 {
                regDic.removeValue(forKey: complementNum)
            }else {
                regDic[complementNum] = count-1
            }
        }else{
            if let count = regDic[num] {
                regDic[num] = count+1
            }else{
                regDic[num] = 1
            }
        }
    }
    return ans
}

func q1679TwoPointers(_ nums: [Int], _ k: Int) -> Int {
    var ans = 0
    var countDic: [Int:Int] = [:]
    for num in nums {
        if let count = countDic[num] {
            countDic[num] = count+1
        }else{
            countDic[num] = 1
        }
    }
    var usedNums: Set<Int> = []
    for (num, count) in countDic {
        guard !usedNums.contains(num) else{
            continue
        }
        usedNums.insert(num)
        let complementNum = k-num
        if num == complementNum {
            ans += count/2
        }else{
            ans += min(count, countDic[complementNum] ?? 0)
            usedNums.insert(complementNum)
        }
    }
    return ans
}