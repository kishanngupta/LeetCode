final class Solution {
    func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
        guard k > 0 else { return 0 }
        
        let n = nums.count
        var p = 1
        var result = 0
        
        var left = 0
        for right in 0..<n {
            p *= nums[right]
            
            while p >= k, left <= right {
                p /= nums[left]
                left += 1
            }
            
            result += right - left + 1
        }
        
        return result
    }
}