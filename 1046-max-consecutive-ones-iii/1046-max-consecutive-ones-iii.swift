class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var left = 0
        var count = 0
        var kk = 0

        for right in nums.indices {
            if nums[right] == 0 {
                kk+=1
            }
            while kk > k {
                if nums[left] == 0 {
                    kk-=1
                }
                left+=1
            }
            count = max(count,right-left+1)
        }

        return count
    }
}