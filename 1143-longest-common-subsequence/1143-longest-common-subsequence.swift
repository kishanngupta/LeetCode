class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        
        let l1 = text1.count
        let l2 = text2.count
        let s1 = Array(text1)
        let s2 = Array(text2)
        // var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: l2), count: l1)
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: l2+1), count: l1+1)
        
        for i in 1...l1 {
            for j in 1...l2 {
                if s1[i-1]==s2[j-1] { 
                    dp[i][j] = 1 + dp[i-1][j-1]
                } else {
                    dp[i][j] = max(dp[i-1][j], dp[i][j-1])
                }
            }
        }
        return dp[l1][l2]
        // return calculate(l1-1,l2-1, Array(text1), Array(text2), &dp)
    }
    
//     private func calculate(_ i: Int,_ j: Int,_ s1: [Character],_ s2: [Character],_ dp:inout [[Int]]) -> Int {
//         if i<0 || j<0 { return 0 }
        
//         if dp[i][j] != -1 {
//             return dp[i][j]
//         }
        
//         if s1[i]==s2[j] { 
//             dp[i][j] = 1 + calculate(i-1,j-1, s1, s2, &dp)
//             return dp[i][j]
//         } else {
//             dp[i][j] = max(calculate(i-1,j, s1, s2, &dp), calculate(i,j-1, s1, s2, &dp))
//             return dp[i][j]
//         }
//     }
}