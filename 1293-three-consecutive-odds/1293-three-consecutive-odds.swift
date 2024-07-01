class Solution {
    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        var count = 0

        for num in arr {
            if num%2 == 1 {
                if count == 2 {
                    return true
                } else {
                    count += 1
                }
            } else {
                count = 0
            }
        }

        return false
    }
}