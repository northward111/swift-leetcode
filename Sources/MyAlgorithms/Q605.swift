/*
1 <= flowerbed.length <= 2 * 10^4
flowerbed[i] is 0 or 1.
There are no two adjacent flowers in flowerbed.
0 <= n <= flowerbed.length
*/

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    if n == 0 {
        return true
    }
    if n == 1 {
        if flowerbed.count == 1 && flowerbed[0] == 0 {
            return true
        }
        if flowerbed.count == 2  {
            if flowerbed[0] == 1 || flowerbed[1] == 1 {
                return false
            }else {
                return true
            }
        }
    }
    if n > flowerbed.count / 2 + 1 {
        return false
    }   
    for i in 0..<flowerbed.count {
        guard flowerbed[i] == 0 else{
            continue
        }
        guard i == 0 || flowerbed[i-1] == 0 else{
            continue
        }
        guard i == flowerbed.count-1 || flowerbed[i+1] == 0 else{
            continue
        }
        var suffixFlowerbed = [Int](flowerbed[i...])
        suffixFlowerbed[0] = 1
        return canPlaceFlowers(suffixFlowerbed, n-1)
    }
    return false
}