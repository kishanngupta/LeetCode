class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var prefixSum = 1
        var suffixSum = 1
        var maxi = Int.min

        for i in 0..<nums.count {
            if prefixSum == 0 {
                prefixSum = 1
            }
            if suffixSum == 0 {
                suffixSum = 1
            }
            prefixSum *= nums[i]
            suffixSum *= nums[nums.count-i-1]

            maxi = max(maxi, prefixSum)
            maxi = max(maxi, suffixSum)
        }
        return maxi
    }
}