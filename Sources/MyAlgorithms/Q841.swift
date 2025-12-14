// LeetCode Problem 841
/*
*/
public func q841CanVisitAllRooms(_ rooms: [[Int]]) -> Bool {
    let n = rooms.count
    var roomStatuses: [Bool] = Array.init(repeating: false, count: n)
    roomStatuses[0] = true
    var toVisitRooms: [Int] = rooms[0]
    while !toVisitRooms.isEmpty {
        var nextRooms: [Int] = []
        for room in toVisitRooms {
            roomStatuses[room] = true
        }
        for room in toVisitRooms {
            for key in rooms[room] {
                if roomStatuses[key] == false {
                    nextRooms.append(key)
                }
            }
        }
        toVisitRooms = nextRooms
    }
    for status in roomStatuses {
        if status == false {
            return false
        }
    }
    return true
}