class Solution {
    func minDifference(_ nums: [Int]) -> Int {
        /// if array size is till for difference is always gonna be 0.
        /// if size is less than 4 then change all value to one number.
        /// if size is 4 than change first 3 value to last value and evey element is same in array 
        /// and difference would be zero.
        var count = nums.count
        if count < 5 { return 0}
        var nums = nums.sorted()

        let result:[Int] = [
            /// if last 3 values are updated with smallest value(arr[0]) 
            nums[count-4]-nums[0],
            /// if last 2 values are updated, and first value in update
            nums[count-3]-nums[1],
            /// if last one value is updated and first two values are updated
            nums[count-2]-nums[2],
            /// if first 3 values are updated with last value
            nums[count-1]-nums[3]
        ]

        return result.min()!
    }
}