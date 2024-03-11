class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        return generateSubset(0, nums)
    }

    func generateSubset(_ i: Int,_ nums: [Int]) -> [[Int]] {
        if i == nums.count { return [[]] }

        var result: [[Int]] = []
        var element = [nums[i]]
        let ros = generateSubset(i+1, nums)

        for list in ros {
            result.append(list)
            result.append(list + element)
        }

        return result
    }
}