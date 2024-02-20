class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var posIndex = 0
        var negIndex = 1
        var result: [Int] = nums

        for item in nums {
            if item < 0 {
                result[negIndex] = item
                negIndex += 2
            } else {
                result[posIndex] = item
                posIndex += 2
            } 
        }
        return result
    }
}