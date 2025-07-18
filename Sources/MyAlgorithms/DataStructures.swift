/// double end queue, using two arrays under the hood
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