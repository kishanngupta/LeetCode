class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var fast = nums.first!
        var slow = nums.first!

        repeat {
            fast = nums[nums[fast]]
            slow = nums[slow]
            print(slow, fast)
        } while (fast != slow)

        fast = nums.first!
        while(slow != fast) {
            slow = nums[slow]    
            fast = nums[fast]
        }

        return slow
    }
}