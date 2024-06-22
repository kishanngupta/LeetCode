class Solution {
    func numberOfSubarrays(_ nums: [Int], _ k: Int) -> Int {
        let result = niceArray(k) - niceArray(k-1)

        func niceArray(_ k: Int) -> Int {
            if k < 0 { return 0 }
            var left = 0
            var sum = 0
            var count = 0

            for right in 0..<nums.count {
                sum += nums[right]%2

                while sum > k {
                    sum -= nums[left]%2
                    left += 1
                }
                count += right-left+1
            }
            return count
        }
        return result
    }
}