class Solution {
    func findMaxLength(_ nums: [Int]) -> Int {
        var sum = 0
        var maxLength = 0
        var hash: [Int: Int] = [:]

        for i in 0..<nums.count {
            sum += (nums[i] == 0) ? -1 : 1

            if sum == 0 {
                maxLength = i+1
            } else if let index = hash[sum] {
                maxLength = max(maxLength, i-index)
            } else {
                hash[sum] = i
            }
        }
        return maxLength
    }
}