class Solution {

    var dp: [Int] = []
    func rob(_ nums: [Int]) -> Int {
        dp = Array(repeating: -1, count: nums.count)
        decideToPick(nums, nums.count-1)
        return dp[nums.count-1]
    }

    /// Solved using memoization
    /// revise once, still have lil doubts
    /// Have to do in tabulation
    private func decideToPick(_ nums: [Int],_ index: Int) -> Int {
        if index == 0 { 
            dp[index] = nums[index] 
            return nums[index] 
        }  else if index < 0 { 
            return 0 
        }

        if dp[index] != -1 { 
            return dp[index]
        }

        let picked = nums[index] + decideToPick(nums, index-2)
        let notPicked = decideToPick(nums, index-1)

        dp[index] = max(picked, notPicked)

        return dp[index]
    }
}