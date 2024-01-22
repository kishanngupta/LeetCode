class Solution {
    func shortestCommonSupersequence(_ str1: String, _ str2: String) -> String {
        let s1 = Array(str1)
        let s2 = Array(str2)
        let n = s1.count
        let m = s2.count
        var dp:[[Int]] = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)

        for i in 1...n {
            for j in 1...m {
                if s1[i-1] == s2[j-1] {
                    dp[i][j] = 1 + dp[i-1][j-1]
                } else {
                    dp[i][j] = max(dp[i-1][j], dp[i][j-1])
                }
            }
        }

        var i = n
        var j = m
        var sol = ""

        while(i>0 && j>0) {
            if s1[i-1] == s2[j-1] {
                sol += String(s1[i-1])
                i-=1
                j-=1
            } else if dp[i-1][j] > dp[i][j-1] {
                sol += String(s1[i-1])
                i-=1
            } else {
                sol += String(s2[j-1])
                j-=1
            }
        }

        while i>0 {
            sol += String(s1[i-1])
            i-=1
        }

        while j>0 {
            sol += String(s2[j-1])
            j-=1
        }
        sol = String(sol.reversed())
        return sol
    }
}