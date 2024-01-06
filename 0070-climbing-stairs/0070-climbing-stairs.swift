class Solution {
    /// Solving it using the tabular
    var dp: [Int] = []
    
    func climbStairs(_ n: Int) -> Int {
        dp = Array(repeating: -1, count: n+1)
        
        for i in (0..<n+1).reversed() {
            if i == n || i == n-1 {
                dp[i] = 1
            } else {
                dp[i] = dp[i+1] + dp[i+2]
            }
        }
        return dp[0]
    }
    
}