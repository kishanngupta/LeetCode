class Solution {
    func numberOfSubarrays(_ nums: [Int], _ k: Int) -> Int {

        func calc(_ goal: Int) -> Int {
            if k < 0 { return 0 }
            var left = 0
            var count = 0
            var sum = 0

            for right in nums.indices {
                sum += (nums[right]%2)

                while sum > goal {
                    sum -= (nums[left]%2)
                    left += 1
                }
                count += (right-left+1)
            }
            return count
        }

        return calc(k) - calc(k-1)
    }
}