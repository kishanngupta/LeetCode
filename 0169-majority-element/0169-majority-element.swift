class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 1
        var element = nums.first!

        for item in nums.dropFirst() {
            if count == 0 {
                element = item
                count += 1
            } else if item == element {
                count += 1
            } else {
                count -= 1
            }
        }
        return element
    }
}