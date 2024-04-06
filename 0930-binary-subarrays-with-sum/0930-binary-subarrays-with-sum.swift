class Solution {
    func numSubarraysWithSum(_ nums: [Int], _ goal: Int) -> Int {
        let sum = findSum(nums, goal)
        let sum2 = findSum(nums, goal-1)
        return sum - sum2
    }

    func findSum(_ nums: [Int], _ goal: Int) -> Int {
        if goal < 0 { return 0 }

        var sum = 0
        var count = 0   
        var left = 0

        for right in nums.indices {
            sum += nums[right]

            while(sum>goal) {
                sum -= nums[left]
                left += 1
            }

            count += right-left+1
        }
        return count
    }
}