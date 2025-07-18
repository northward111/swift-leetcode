// LeetCode Problem 933
/*
*/



class RecentCounter {

    var requests = Deque<Int>()

    init() {
        
    }
    
    func ping(_ t: Int) -> Int {
        requests.pushBack(t)
        while let front = requests.peekFront() {
            if front < t-3000 {
                _ = requests.popFront()
                continue
            }else{
                break
            }
        }
        return requests.count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */