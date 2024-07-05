class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var sum = 0
        var maxi = Int.min
        var negative: Int? = nil

        for num in nums {
            sum += num
            
            if sum < 0 {
                sum = 0
                if maxi == Int.min {
                    negative = max(negative ?? Int.min, num)
                }
            } else {
                negative = nil
                maxi = max(maxi, sum)
            }
            
        }
        return negative != nil ? negative! : maxi
    }
}