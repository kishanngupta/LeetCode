class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var i = 0
        var j = 1
        var result: [Int] = nums

        for num in nums {
            if num >= 0 {
                result[i] = num
                i+=2
            } else {
                result[j] = num
                j+=2
            }
        }
        return result
    }
}