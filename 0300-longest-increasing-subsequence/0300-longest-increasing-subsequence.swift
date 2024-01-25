class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        /// Initialize an array dp with the same length as nums and fill it with 1s.
        var dp: [Int] = Array(repeating: 1, count: nums.count)
        var maxi = 1
        ///Iterate through each element in nums.
        for i in 0..<nums.count {
            ///Iterate through all prev element till current index
            for j in 0..<i {
                /// if prev index element is smaller then current index element
                /// Update dp at current index, with maximum of value of prev index element + 1, if its greater than current index value of dp
                if nums[i] > nums[j] {
                    dp[i] = max(dp[i], dp[j]+1)
                    /// compute the maximum at the same time
                    maxi = max(maxi, dp[i])
                }
            }
        }
        return maxi
    }
}