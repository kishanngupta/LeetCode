class Solution {
    func minInsertions(_ s: String) -> Int {
        var s1 = Array(s)
        var s2 = Array(s.reversed())
        var n = s.count
        
        var dp:[[Int]] = Array(repeating: Array(repeating: -1, count: n), count: n)
        return n-cal(n-1,n-1, s1, s2, &dp)
    }

    private func cal(_ i: Int,_ j: Int,_ s1: [Character],_ s2: [Character],_ dp: inout [[Int]]) -> Int {
        if i<0 || j<0 {
            return 0
        }

        if dp[i][j] != -1 {
            return dp[i][j]
        }

        if s1[i] == s2[j] {
            dp[i][j] = 1 + cal(i-1,j-1,s1,s2,&dp)
        } else {
            let first = cal(i-1,j,s1,s2,&dp)
            let second = cal(i,j-1,s1,s2,&dp)
            dp[i][j] = max(first, second)
        }
        return dp[i][j]
    }
}