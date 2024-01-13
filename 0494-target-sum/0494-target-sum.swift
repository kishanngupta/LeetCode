class Solution {
    var count: Int = 0
    var dp: [[Int]: Int] = [:]
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        return findTarget(nums,0,target,0)
    }
    
    private func findTarget(_ nums: [Int],_ i: Int, _ target: Int,_ sum: Int) -> Int {
        if let value = dp[[i,sum]] { return value }
        if i == nums.count {
            return target == sum ? 1 : 0
        }
        
        let pick = findTarget(nums, i+1, target, sum+nums[i])
        let notPick = findTarget(nums, i+1, target, sum-nums[i])
        dp[[i, sum]] = pick + notPick
        return dp[[i, sum]]!
    }
}