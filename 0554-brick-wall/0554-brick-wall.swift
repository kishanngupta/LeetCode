class Solution {
    func leastBricks(_ wall: [[Int]]) -> Int {
        var hash: [Int: Int] = [:]

        for row in wall {
            var count = 0
            
            for brick in row.dropLast() ?? [] {
                count += brick
                hash[count, default: 0] += 1
            }
        }
        return wall.count - (hash.values.max() ?? 0)
    }
}