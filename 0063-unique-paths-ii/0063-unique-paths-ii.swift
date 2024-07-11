class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        var m = obstacleGrid.count
        var n = obstacleGrid[0].count
        var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: n), count: m)

        func find(_ i: Int,_ j: Int) -> Int {
            if obstacleGrid[i][j] == 1 {
                return 0
            } else if i == m-1 && j == n-1 {
                return 1
            } else if dp[i][j] != -1 {
                return dp[i][j]
            }

            var hPath = 0
            var vPath = 0

            if i < m-1 {
                vPath = find(i+1, j)
            }
            if j < n-1 {
                hPath = find(i, j+1)
            }

            dp[i][j] = hPath + vPath

            return dp[i][j]
        }

        return find(0, 0)
    }
}