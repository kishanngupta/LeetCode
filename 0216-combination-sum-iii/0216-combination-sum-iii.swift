class Solution {
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        var nums = Array(1...9)
        var path: [Int] = []
        var result: [[Int]] = []

        sum(0, n)

        func sum(_ index: Int,_ target: Int){
            if target == 0 && path.count == k {
                result.append(path)
                return
            } else if index == nums.count || target < 0 || path.count > k {
                return
            }

            path.append(nums[index])
            sum(index+1, target-nums[index])
            path.removeLast()

            sum(index+1, target)
        }

        return result
    }
}