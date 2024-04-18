class Solution {
    func subarraysWithKDistinct(_ nums: [Int], _ k: Int) -> Int {
        return atMost(k:k, nums) - atMost(k: k-1,nums)
    }

    func atMost(k: Int,_ nums: [Int]) -> Int {
        var hash: [Int: Int] = [:]
        var left = 0
        var result = 0
            
        for right in 0..<nums.count {
            hash[nums[right], default: 0] += 1

            while hash.count > k {
                hash[nums[left]]! -= 1
                if hash[nums[left]]! == 0 {hash[nums[left]] = nil}
                left += 1
            }
            result += right - left + 1
        }
        
        return result
    } 
}