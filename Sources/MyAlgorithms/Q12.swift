// LeetCode Problem 12
/*
*/
enum DigitType {
    case hundred, ten, one
}

func q12IntToRoman(_ num: Int) -> String {
    // TODO: Implement solution
    var res = ""
    func processDigit(digit: Int, digitType: DigitType) {
        let symbols = {
            switch digitType {
            case .hundred:
                return Array("CDM")
            case .ten:
                return Array("XLC")
            case .one:
                return Array("IVX")
            }
        }()
        if digit == 9 {
            res.append(symbols[0])
            res.append(symbols[2])
        } else if (digit >= 5) {
            res.append(symbols[1])
            res.append(contentsOf: Array(repeating: symbols[0], count: digit - 5))
        } else if (digit == 4) {
            res.append(symbols[0])
            res.append(symbols[1])
        } else {
            res.append(contentsOf: Array(repeating: symbols[0], count: digit))
        }
    }
    func intToRomanOneToken(num: Int) -> Int {
        if num >= 1000 {
            let thousandDigit = num / 1000
            res.append(contentsOf: Array(repeating: "M", count: thousandDigit))
            return num % 1000
        } else if num >= 100 {
            let hundredDigit = num / 100
            processDigit(digit: hundredDigit, digitType: .hundred)
            return num % 100
        } else if (num >= 10) {
            let tenDigit = num / 10
            processDigit(digit: tenDigit, digitType: .ten)
            return num % 10
        } else {
            processDigit(digit: num, digitType: .one)
            return 0
        }
    }
    var remained = num
    while remained > 0 {
        remained = intToRomanOneToken(num: remained)
    }
    return res
}