class Solution {
     func find132pattern(_ nums: [Int]) -> Bool {
        var stack = [(Int,Int)]() // [j, minValue]
        var currMin = nums[0] // current minValue
        
        for k in 1..<nums.count {
            while !stack.isEmpty && stack.last!.0 < nums[k] {
                stack.removeLast()
            }
            if !stack.isEmpty && nums[k] > stack.last!.1 && nums[k] < stack.last!.0 {
                return true
            }
            stack.append((nums[k], currMin))
            currMin = min(currMin, nums[k])
        }
        return false
    }
}