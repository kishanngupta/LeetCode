class Solution {
    func numSubarraysWithSum(_ nums: [Int], _ goal: Int) -> Int {

        func findSum(_ goal: Int) -> Int {
            if goal < 0 { return 0 }
            var sum = 0
            var left = 0
            var count = 0

            for right in nums.indices {
                sum += nums[right]

                while sum > goal {
                    sum -= nums[left]
                    left+=1
                }
                count += right-left+1
            }
            return count
        }

        return findSum(goal) - findSum(goal-1)
        
    }
}