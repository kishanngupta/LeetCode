class Solution {
    /// Solving it using the memoization
    var dp: [Int] = []
    
    func climbStairs(_ n: Int) -> Int {
        dp = Array(repeating: -1, count: n+1)
        climb(n)
        return dp[n]
    }
    
    private func climb(_ n: Int) -> Int {
        if n == 0 { return 1 }
        else if n < 0 { return 0 }
         
        if dp[n] != -1 {
            return dp[n]
        }
        
        let left = climb(n-1)
        let right = climb(n-2)
        dp[n] = left + right
        
        return dp[n]
    }
}