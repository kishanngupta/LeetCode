class Solution {
    func countSubarrays(_ nums: [Int], _ minK: Int, _ maxK: Int) -> Int {
        var result: Int = 0
        var left = -1
        var prevMinKIndex = -1
        var prevMaxKIndex = -1
        
        for right in 0..<nums.count {
            if nums[right] < minK || nums[right] > maxK {
                left = right
            }
            if nums[right] == minK {
                prevMinKIndex = right
            }
            if nums[right] == maxK {
                prevMaxKIndex = right
            }
            let mini = min(prevMinKIndex, prevMaxKIndex) - left
            result += max(0, mini)
        }
        
        return result
    }
}