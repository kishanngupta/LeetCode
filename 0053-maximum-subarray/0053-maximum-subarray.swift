class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var sum = 0
        var maxi = Int.min

        for num in nums {
            sum += num
            maxi = max(sum, maxi)

            if sum < 0 {
                sum = 0
            }
        }
        return maxi 
    }
}