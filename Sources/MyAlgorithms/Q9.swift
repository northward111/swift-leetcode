// LeetCode Problem 9
/*
*/
public func q9IsPalindrome(_ x: Int) -> Bool {
    return halfReverse(x)
}

func noStr(_ x: Int) -> Bool {
    guard x >= 0 else {
        return false
    }
    var digitArr: [Int] = []
    var remained = x
    while remained > 0 {
        digitArr.append(remained % 10)
        remained = remained / 10
    }
    var left = 0, right = digitArr.count - 1
    while left < right {
        if digitArr[left] != digitArr[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

func halfReverse(_ x: Int) -> Bool {
    if x < 0 || (x % 10 == 0 && x != 0) {
        return false
    }
    var n = x, rev = 0
    while n > rev {
        rev = rev * 10 + n % 10
        n /= 10
    }
    return n == rev || n == rev / 10
}