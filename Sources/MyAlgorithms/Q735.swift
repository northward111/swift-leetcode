// LeetCode Problem 735
/*
*/
public func q735AsteroidCollision(_ asteroids: [Int]) -> [Int] {
    // TODO: Implement solution
    var ans: [Int] = []
    for asteroid in asteroids {
        if asteroid > 0 {
            ans.append(asteroid)
        }else{
            while true {
                if let last = ans.last, last > 0 {
                    if last == -asteroid {
                        ans.removeLast()
                        break
                    } else if last < -asteroid {
                        ans.removeLast()
                        continue
                    }else{
                        break
                    }
                } else {
                    ans.append(asteroid)
                    break
                }
            }
        }
    }
    return ans
}