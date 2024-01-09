class Solution {
    
    var dp: [[Int]] = []
    
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        /// solved using tabular method
        let m = obstacleGrid.count
        let n = obstacleGrid[0].count
        
        dp = Array(repeating: Array(repeating: -1, count: n), count: m)
        
        var isFound = false
        for i in 0..<m {
            if obstacleGrid[i][0] == 1 {
                isFound = true
            }
/// if obstacle found in first row/column then there is no further possible way in that row/column
            dp[i][0] = isFound ? 0 : 1 
        }

        isFound = false
        for j in 0..<n {
            if obstacleGrid[0][j] == 1 {
                isFound = true
            }
/// if obstacle found in first row/column then there is no further possible way in that row/column
            dp[0][j] = isFound ? 0 : 1
            
        }
        
        for i in 1..<m {
            for j in 1..<n {
                if obstacleGrid[i][j] == 1 {
                    dp[i][j] = 0
                } else {
                    dp[i][j] = dp[i-1][j] + dp[i][j-1]
                }
            }
        }
        
        return dp[m-1][n-1]
    }
}