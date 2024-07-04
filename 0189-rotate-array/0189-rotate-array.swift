class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let k = k%nums.count
        nums.reverse()
        nums[0..<k].reverse()
        nums[k...].reverse()
    }
}