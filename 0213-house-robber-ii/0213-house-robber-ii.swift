class Solution {
    var dp: [Int] = []
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 0 { return 0 }
        else if nums.count == 1 { return nums[0] }
        
        dp = Array(repeating: -1, count: nums.count-1)
        let withoutFirst = decideToPick(Array(nums.dropFirst()), nums.count-2)
        dp = Array(repeating: -1, count: nums.count-1)
        let withoutLast = decideToPick(Array(nums.dropLast()), nums.count-2)
        return max(withoutFirst, withoutLast)
    }

    private func decideToPick(_ nums: [Int],_ index: Int) -> Int {
        if index == 0 { 
            dp[index] = nums[index]
            return nums[index]
        } else if index < 0 {
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