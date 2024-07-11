class Solution {
    func climbStairs(_ n: Int) -> Int {
        var dp: [Int] = Array(repeating: -1, count: n+1)
        
        func climb(_ i: Int) -> Int {
            if i == 0 {
                return 1
            } else if i<0 {
                return 0
            } else if dp[i] != -1 {
                return dp[i]
            }

            dp[i] = climb(i-1) + climb(i-2)
            return dp[i]
        }

        return climb(n)
    }
}