class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var i = 0
        var j = 0
        var result: [Int] = []

        while(i<nums.count && j<nums.count) {
            if !(nums[i] >= 0) {
                i += 1
            } else if !(nums[j] < 0) {
                j += 1
            } else {
                result.append(nums[i])
                result.append(nums[j])
                i+=1
                j+=1
            }
        }
        return result
        
    }
}