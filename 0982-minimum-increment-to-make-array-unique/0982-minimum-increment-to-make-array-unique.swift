class Solution {
    func minIncrementForUnique(_ nums: [Int]) -> Int {
        var nums = nums.sorted()
        var count = 0

        for i in nums.indices {
            while i != 0 && nums[i] <= nums[i-1] {
                nums[i] += 1
                count += 1
            }
        }

        return count
    }
}