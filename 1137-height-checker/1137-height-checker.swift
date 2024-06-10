class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        var sortedHeight = heights.sorted()
        var count = 0

        for i in heights.indices {
            if heights[i] != sortedHeight[i] {
                count += 1
            }
        }

        return count
    }
}