class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var result: Set<[Int]> = []
        var path: [Int] = []
        var nums = nums.sorted()

        subset(0)
        
        func subset(_ i: Int) {
            if i == nums.count {
                result.insert(path)
                return
            }

            path.append(nums[i])
            subset(i+1)
            path.removeLast()

            subset(i+1)
        }

        return Array(result)
    }
}