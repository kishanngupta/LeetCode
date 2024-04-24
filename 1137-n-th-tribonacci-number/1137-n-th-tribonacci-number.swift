class Solution {
    func tribonacci(_ n: Int) -> Int {
        var dp: [Int] = Array(repeating: -1, count: n+1)
        return cal(n, &dp)
    }

    func cal(_ n: Int,_ dp: inout [Int]) -> Int {

        if n == 0 || n == 1 {
            return n
        } else if n == 2 {
            return 1
        } else if dp[n] != -1 {
            return dp[n]
        }

        let total = cal(n-1, &dp) + cal(n-2, &dp) + cal(n-3, &dp)
        dp[n] = total
        
        return total
    }
}