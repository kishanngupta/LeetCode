class Solution {
    func canPartition(_ nums: [Int]) -> Bool {
        var sum = nums.reduce(0,+)
        if sum%2 == 1 { return false }
        sum = sum/2
        var dp: [[Bool?]] = Array(repeating: Array(repeating: nil, count: sum+1), count: nums.count)

        func partition(_ i: Int,_ sum: Int) -> Bool {
            if i == nums.count-1 {
                return nums[i] == sum
            } else if sum < 0 {
                return false
            } else if dp[i][sum] != nil {
                return dp[i][sum]!
            }

            let notPick = partition(i+1, sum)
            let pick = partition(i+1, sum-nums[i])

            dp[i][sum] = pick || notPick
            return dp[i][sum]!
        }

        return partition(0,sum)        
    }
}