class Solution {
    func minDifference(_ nums: [Int]) -> Int {
        if nums.count < 5 { return 0 }
        var nums = nums.sorted()
        var diff = Int.max

        for i in 0..<4 {
            diff = min(diff, nums[nums.count-4+i]-nums[i])
        }

        return diff
    }
}