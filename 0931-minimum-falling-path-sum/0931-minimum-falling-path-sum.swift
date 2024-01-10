class Solution {
    func minFallingPathSum(_ matrix: [[Int]]) -> Int {
        var mini = Int.max
        let m = matrix.count
        let n = matrix[0].count
        
        /// Using Bottom up approach of sumit
        /// using tabular method
        /// Decide direction
        /// Assign meaning
        /// Travel and solve
        var dp = Array(repeating: Array(repeating: -1, count: n), count: m)
        
        for i in (0..<m).reversed() {
            for j in (0..<n).reversed() {
                if i == m-1 {
                    dp[i][j] = matrix[i][j]
                } else if j == 0{
                    dp[i][j] = matrix[i][j] + min(dp[i+1][j], dp[i+1][j+1])
                } else if j == n-1 {
                    dp[i][j] = matrix[i][j] + min(dp[i+1][j], dp[i+1][j-1])
                } else {
                    var minimum = min(dp[i+1][j-1], dp[i+1][j])
                    minimum = min(minimum, dp[i+1][j+1])
                    dp[i][j] = matrix[i][j] + minimum
                }
                if i == 0 {
                    mini = min(mini, dp[i][j])
                }
            }
        }
        
        return mini
    }
}