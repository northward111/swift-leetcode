// LeetCode Problem 13
/*
*/
public func q13RomanToInt(_ s: String) -> Int {
    return backward(s)
}

func forward(_ s: String) -> Int {
    let s = Array(s)
    var i = 0
    var res = 0
    while i < s.count {
        let cur = s[i]
        let next: Character? = {
            if i < s.count - 1 {
                return s[i+1]
            }else {
                return nil
            }
        }()
        switch cur {
        case "V":
            res += 5
            i += 1
        case "L":
            res += 50
            i += 1
        case "D":
            res += 500
            i += 1
        case "M":
            res += 1000
            i += 1
        case "I":
            switch next {
            case "V":
                res += 4
                i += 2
            case "X":
                res += 9
                i += 2
            default:
                res += 1
                i += 1
            }
        case "X":
            switch next {
            case "L":
                res += 40
                i += 2
            case "C":
                res += 90
                i += 2
            default:
                res += 10
                i += 1
            }
        case "C":
            switch next {
            case "D":
                res += 400
                i += 2
            case "M":
                res += 900
                i += 2
            default:
                res += 100
                i += 1
            }
        default:
            fatalError("unexpected character \(cur)")
        }
    }
    return res
}

func backward(_ s: String) -> Int {
    let s = Array(s)
    var i = s.count - 1
    var maxNum = 0
    var res = 0
    let romanToNumMap: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    while i >= 0 {
        let cur = s[i]
        guard let curNum = romanToNumMap[cur] else {
            fatalError("unexpected character \(cur)")
        }
        if curNum < maxNum {
            res -= curNum
        }else {
            res += curNum
            maxNum = curNum
        }
        i -= 1
    }
    return res
}