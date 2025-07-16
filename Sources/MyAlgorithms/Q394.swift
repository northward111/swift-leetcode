// LeetCode Problem 394
/*
*/
public func q394DecodeString(_ s: String) -> String {
    // TODO: Implement solution
    let chars = Array(s)
    // [(2,["c", "d"])]
    var stack:[(Int,[Character])] = []
    var ans: [Character] = []
    var digitArr: [Character] = []
    for char in chars {
        if let _ = Int(String(char)) {
            digitArr.append(char)
        } else if char == "[" {
            if let number = Int(String(digitArr)) {
                stack.append((number, []))
            }
            digitArr = []
        } else if char == "]" {
            // pop stack
            if let popped = stack.popLast() {
                var toAppend: [Character] = []
                for _ in 0..<popped.0 {
                    toAppend.append(contentsOf: popped.1)
                }
                if stack.isEmpty {
                    // stack is empty, append to ans
                    ans.append(contentsOf: toAppend)
                } else {
                    stack[stack.count - 1].1.append(contentsOf: toAppend)
                }
            }
        } else {
            // a, b ,c
            if stack.isEmpty {
                // stack is empty, append to ans
                ans.append(char)
            }else{
                stack[stack.count-1].1.append(char)
            }
        }
        
    }
    return String(ans)
}