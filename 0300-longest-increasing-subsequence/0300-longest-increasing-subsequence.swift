class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        let n = nums.count
        var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: n), count: n)
        return length(0, -1, nums, &dp)
    }
    
    private func length(_ index: Int,_ prev:Int,_ nums: [Int],_ dp: inout [[Int]]) -> Int {
        if index == nums.count { return 0 }
        else if dp[index][prev+1] != -1 {
            return dp[index][prev+1]
        }
        
        let notPick = length(index+1, prev, nums, &dp)
        var pick = 0
        if prev == -1 || nums[prev] < nums[index] {
            pick = 1 + length(index+1, index, nums, &dp)
        }
        dp[index][prev+1] = max(pick, notPick)
        return dp[index][prev+1]
    }
}