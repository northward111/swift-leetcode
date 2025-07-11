// LeetCode Problem 443
/*
Constraints:

1 <= chars.length <= 2000
chars[i] is a lowercase English letter, uppercase English letter, digit, or symbol.
*/
public func Q443Compress(_ chars: inout [Character]) -> Int {
    // TODO: Implement solution
    var currentChar = chars[0]
    var currentCount = 1
    var ans = 1
    func storeNumClosure() -> Void {
        guard currentCount > 1 else{
            return
        }
        let numChars = Array<Character>(String(currentCount))
        for i in 0..<numChars.count {
            chars[ans + i] = numChars[i]
        }
        ans += numChars.count
    }
    for index in 1..<chars.count {
        let char = chars[index]
        if char == currentChar {
            currentCount += 1
            if index == chars.count-1 {
                storeNumClosure()
            }
        } else{
            storeNumClosure()
            chars[ans] = char
            ans += 1
            currentChar = char
            currentCount = 1
        }
    }
    return ans
}