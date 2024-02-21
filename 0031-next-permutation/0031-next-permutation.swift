class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        
        var index = -1
        
        for i in (0..<nums.count-1).reversed() {
            if nums[i] < nums[i+1] {
                index = i
                break
            }
        }
        
        if index == -1 {
            nums.reverse()
            return
        }
        
        for i in (index..<nums.count).reversed() {
            if nums[index] < nums[i] {
                let temp = nums[index]
                nums[index] = nums[i]
                nums[i] = temp
                break
            }
        }

        let prefix = nums[0...index]
        let suffix = nums[index+1..<nums.count].reversed()
        nums = Array(prefix + suffix)
    }
}