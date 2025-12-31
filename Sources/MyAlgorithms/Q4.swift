// LeetCode Problem 4
/*
*/

func q4FindMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    return divideAndConquer(nums1, nums2)
}

func naive(_ nums1: [Int], _ nums2: [Int]) -> Double {
    // implement solution
    let count = nums1.count + nums2.count
    let target = count/2+1
    var last: Int? = nil, secondLast: Int? = nil
    func append(_ val: Int) {
        if last == nil {
            last = val
        }else {
            secondLast = last
            last = val
        }
    }
    var index1 = 0, index2 = 0
    for _ in 0..<target {
        if index1 == nums1.count {
            append(nums2[index2])
            index2 += 1
        }else if index2 == nums2.count {
            append(nums1[index1])
            index1 += 1
        }else {
            let candidate1 = nums1[index1], candidate2 = nums2[index2]
            if candidate1 < candidate2 {
                append(candidate1)
                index1 += 1
            }else {
                append(candidate2)
                index2 += 1
            }
        }
    }
    if count % 2 == 0 {
        return Double(last!+secondLast!)/2.0
    }else {
        return Double(last!)
    }
}



func divideAndConquer(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var nums1 = nums1, nums2 = nums2
    if nums1.count > nums2.count {
        swap(&nums1, &nums2)
    }
    let m = nums1.count, n = nums2.count
    let halfSize = (m+n+1)/2
    // cutM can be anything in 0...m
    // maxLeftM < minRightN and maxLeftN < minRightM
    var cutM = 0, cutN = 0, maxLeftM = 0, maxLeftN = 0, minRightM = 0, minRightN = 0
    var low = 0, high = m
    while low <= high {
        cutM = (low+high)/2
        cutN = halfSize-cutM
        maxLeftM = cutM == 0 ? Int.min : nums1[cutM-1]
        maxLeftN = cutN == 0 ? Int.min : nums2[cutN-1]
        minRightM = cutM == m ? Int.max : nums1[cutM]
        minRightN = cutN == n ? Int.max : nums2[cutN]
        if maxLeftM > minRightN {
            // move left
            high = cutM-1
        }else if maxLeftN > minRightM {
            // move right
            low = cutM + 1
        } else {
            break
        }
    }
    if (m+n)%2 == 0 {
        return Double(max(maxLeftM, maxLeftN) + min(minRightM, minRightN)) / 2.0
    }else {
        return Double(max(maxLeftM, maxLeftN))
    }

}