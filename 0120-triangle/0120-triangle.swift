class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        var index = 0
        var dp = triangle
        /// we need last row same as triangle hence we are not looping over last row
        /// hence condition is less then triangle.count-1
        for i in (0..<triangle.count-1).reversed() {
            for j in (0..<triangle[i].count).reversed() {                
                dp[i][j] = triangle[i][j] + min(dp[i+1][j], dp[i+1][j+1])
            }
        }
        return dp[0][0]
    }
}