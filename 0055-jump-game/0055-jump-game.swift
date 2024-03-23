class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var dp: [Int] = Array(repeating: -1, count: nums.count)
        return jump(0, nums, &dp)
    }

    func jump(_ i: Int,_ nums: [Int],_ dp: inout [Int]) -> Bool {
        if i == nums.count-1 {
            return true
        } else if i >= nums.count {
            return false
        } else if dp[i] != -1 {
            return dp[i] == 1
        }

        if nums[i] > 0 {
            for index in 1...nums[i] {
                let output = jump(i + index, nums, &dp)
                if output == true {
                    dp[i] = 1
                    return true
                }
            }
        }
        dp[i] = 0
        return false
    }
}