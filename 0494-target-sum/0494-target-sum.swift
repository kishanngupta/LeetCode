class Solution {
    var count: Int = 0
    // var dp: [Int] = []
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        // dp = Array(repeating: -1, count: nums.count)
        findTarget(nums,target,0)
        return count
    }
    
    private func findTarget(_ nums: [Int], _ target: Int,_ sum: Int) {
        if nums.isEmpty {
            if target == sum {
                count += 1
            }
            return
        }
        
        let first = nums.first!
        let ros = Array(nums.dropFirst())
        
        findTarget(ros, target, sum+first)
        findTarget(ros, target, sum-first)
    }
}