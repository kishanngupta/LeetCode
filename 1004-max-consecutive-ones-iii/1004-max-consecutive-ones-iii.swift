class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var x = 0
        var left = 0
        var maxi = 0

        for right in 0..<nums.count {
            if nums[right] == 0 {
                x += 1
            }

            while(x>k) {
                if nums[left] == 0 {
                    x-=1
                }
                left += 1
            }

            maxi = max(maxi, right-left+1)
        }
        return maxi
        
    }
}