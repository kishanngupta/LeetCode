class Solution {
    func longestPalindromeSubseq(_ s: String) -> Int {
        var n = s.count
        var s1 = Array(s)
        var s2 = Array(s.reversed())
        var dp:[[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
        
        for i in 1...n {
            for j in 1...n {
                if s1[i-1] == s2[j-1] {
                    dp[i][j] = 1 + dp[i-1][j-1]
                } else {
                    var first = dp[i-1][j]
                    var second = dp[i][j-1]
                    dp[i][j] = max(first, second)
                }
            }
        }
        
        return dp[n][n]
    }
    
    private func calculate(_ i: Int,_ j: Int, _ s1: [Character],_ s2: [Character],_ dp:inout [[Int]]) -> Int {
        if i<0 || j<0 {
            return 0
        }
        if dp[i][j] != -1 {
            return dp[i][j]
        }
        
        if s1[i] == s2[j] {
            dp[i][j] = 1 + calculate(i-1,j-1,s1,s2,&dp)
        } else {
            var first = calculate(i-1,j,s1,s2,&dp)
            var second = calculate(i,j-1,s1,s2,&dp)
            dp[i][j] = max(first, second)
        }
        return dp[i][j]
    }
}