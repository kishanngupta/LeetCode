class Solution {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {
        var size = nums.count
        var stack: [Int] = []
        var result = Array(repeating:-1, count: size)

        for i in 0..<2*size {
            while(!stack.isEmpty && nums[i%size] > nums[stack.last!]) {
                result[stack.removeLast()] = nums[i%size]
            }
            stack.append(i%size)
        }
        return result
    }
}