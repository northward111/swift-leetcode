// LeetCode Problem 649 Dota2 Senate
/*
*/
public func q649PredictPartyVictory(_ senate: String) -> String {
    return q649Queue(senate)
}

func q649Queue(_ senate: String) -> String {
    var queueRadiant = [Int]()
    var queueDire = [Int]()
    for (i, char) in senate.enumerated() {
        if char == "R" {
            queueRadiant.append(i)
        } else if char == "D" {
            queueDire.append(i)
        }else{
            return "error char \(char) in senate"
        }
    }
    while !queueRadiant.isEmpty && !queueDire.isEmpty {
        let radient = queueRadiant.removeFirst()
        let dire = queueDire.removeFirst()
        if radient < dire {
            queueRadiant.append(radient + senate.count)
        }else {
            queueDire.append(dire + senate.count)
        }
    }
    if queueRadiant.isEmpty {
        return "Dire"
    }else {
        return "Radiant"
    }
}

func q649Naive(_ senate: String) -> String {
    // TODO: Implement solution
    var cannotVoteSenators = Array<Character>()
    var senators = Array(senate)
    var rIndex = 0, dIndex = 0
    /// rIndex and dIndex to the next position
    func updateIndices() {
        // rIndex += 1
        // dIndex += 1
        while rIndex < senators.count {
            if senators[rIndex] == "R" {
                break
            }
            rIndex += 1
        }
        while dIndex < senators.count {
            if senators[dIndex] == "D" {
                break
            }
            dIndex += 1
        }
    }
    while !senators.isEmpty {
        print(senators)
        updateIndices()
        // rIndex differs from dIndex and only one can reach OOB
        while rIndex != senators.count && dIndex != senators.count {
            if rIndex < dIndex {
                cannotVoteSenators.append("R")
            } else {
                cannotVoteSenators.append("D")
            }
            rIndex += 1
            dIndex += 1
            updateIndices()
        }
        if rIndex == senators.count {
            var senatorCount = 0
            while dIndex < senators.count {
                if senators[dIndex] == "D" {
                    senatorCount += 1
                }
                dIndex += 1
            }
            while senatorCount > 0 {
                if let i = cannotVoteSenators.firstIndex(of: "R") {
                    cannotVoteSenators.remove(at: i)
                    cannotVoteSenators.append("D")
                } else {
                    return "Dire"
                }
                senatorCount -= 1
            }
        } else if dIndex == senators.count {
            var senatorCount = 0
            while rIndex < senators.count {
                if senators[rIndex] == "R" {
                    senatorCount += 1
                }
                rIndex += 1
            }
            while senatorCount > 0 {
                if let i = cannotVoteSenators.firstIndex(of: "D") {
                    cannotVoteSenators.remove(at: i)
                    cannotVoteSenators.append("R")
                } else {
                    return "Radiant"
                }
                senatorCount -= 1
            }
        }
        // go to next round
        senators = cannotVoteSenators
        cannotVoteSenators = []
        rIndex = 0
        dIndex = 0
    }
    return "error"
}