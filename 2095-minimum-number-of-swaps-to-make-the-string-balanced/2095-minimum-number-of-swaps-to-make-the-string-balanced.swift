class Solution {
    func minSwaps(_ s: String) -> Int {
        var count = 0
        var maxi = 0

        for char in s {
            if char == "]" {
                count += 1
            } else {
                count -= 1
            }
            maxi = max(maxi, count)
        }

        return Int((maxi+1)/2)
    }
}