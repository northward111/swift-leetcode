// LeetCode Problem 933
/*
*/

struct Deque<T> {
    var front: [T] = []
    var back: [T] = []
    var isEmpty: Bool {
        return front.isEmpty && back.isEmpty
    }
    var count: Int {
        return front.count + back.count
    }

    mutating func pushBack(_ val: T) {
        back.append(val)
    }

    mutating func pushFront(_ val: T) {
        front.append(val)
    }

    mutating func popBack() -> T? {
        if back.isEmpty {
            back = front.reversed()
            front = []
        }
        return back.popLast()
    }

    mutating func popFront() -> T? {
        if front.isEmpty {
            front = back.reversed()
            back = []
        }
        return front.popLast()
    }

    func peekFront() -> T? {
        return front.last ?? back.first
    }

    func peekBack() -> T?{
        return back.last ?? front.first
    }
}

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