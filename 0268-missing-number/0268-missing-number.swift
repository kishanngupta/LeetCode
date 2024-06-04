class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var sum = 0
        var numSum = 0

        for (index, num) in nums.enumerated() {
            sum += num
            numSum += index
        }
        numSum += nums.count
        return numSum-sum
    }
}