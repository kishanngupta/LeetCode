class Solution {
    func numDistinct(_ s: String, _ t: String) -> Int {
        let n = s.count
        let m = t.count
        var dp:[[Int]] = Array(repeating: Array(repeating: -1, count: m), count: n)
        return cal(n-1, m-1, Array(s), Array(t), &dp)
    }

    private func cal(_ i: Int, _ j: Int, _ s: [Character],_ t: [Character],_ dp: inout [[Int]]) -> Int {
        if j<0 { return 1 }
        if i<0 { return 0 }
        
        if dp[i][j] != -1 {
            return dp[i][j]
        }

        if s[i] == t[j] {
            let first = cal(i-1,j-1,s,t, &dp)
            let second = cal(i-1,j,s,t, &dp)
            dp[i][j] = first + second
        } else {
            dp[i][j] = cal(i-1,j,s,t, &dp)
        }
        return  dp[i][j]
    }
}