class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var element: Int? = nil
        var count = 0

        for num in nums {
            if count == 0 {
                element = num
                count = 1
            }else if num == element {
                count += 1
            } else {
                count -= 1
            }
        }

        return element!
    }
}