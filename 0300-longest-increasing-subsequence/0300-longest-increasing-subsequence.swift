class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var n = nums.count
        var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: n+1), count: n)
        return cal(0,-1,nums, &dp)
    }

    private func cal(_ index: Int,_ prevIndex: Int,_ nums: [Int],_ dp: inout [[Int]]) -> Int {
        if index == nums.count { return 0 }
        else if dp[index][prevIndex+1] != -1 {
            return dp[index][prevIndex+1]
        }

        let notTake = cal(index+1, prevIndex, nums, &dp)
        var take = 0
        if prevIndex == -1 || nums[index] > nums[prevIndex] {
            take = 1 + cal(index+1, index, nums, &dp)
        }
        dp[index][prevIndex+1] = max(take, notTake)
        return dp[index][prevIndex+1]
    }
}