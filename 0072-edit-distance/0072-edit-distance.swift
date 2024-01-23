class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        let s1 = Array(word1)
        let s2 = Array(word2)
        let n = s1.count
        let m = s2.count
        var dp:[[Int]] = Array(repeating: Array(repeating: -1, count: m), count: n)
        return cal(n-1,m-1,s1,s2,&dp)
    }

    private func cal(_ i: Int,_ j:Int,_ s1: [Character],_ s2: [Character], _ dp: inout [[Int]]) -> Int {

        if i < 0 {
            return j+1
        } else if j<0{
            return i+1
        }

        if dp[i][j] != -1 {
            return dp[i][j]
        }

        if s1[i] == s2[j] {
            dp[i][j] = cal(i-1,j-1,s1,s2,&dp)
        } else {
            let insert = 1 + cal(i,j-1,s1,s2,&dp)
            let delete = 1 + cal(i-1,j,s1,s2,&dp)
            let replace = 1 + cal(i-1,j-1,s1,s2,&dp)
            dp[i][j] = min(insert, delete)
            dp[i][j] = min(dp[i][j], replace)
        }
        return dp[i][j]
    }
}