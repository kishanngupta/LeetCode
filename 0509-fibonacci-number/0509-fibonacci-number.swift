class Solution {
    func fib(_ n: Int) -> Int {
        /// if n == 0, return simply 0 as answer
        if n == 0 { return 0 }
        /// we are taking tabular approach here
        /// index 0 is smallest problem and n is biggest
        /// hence we are moving from 0->n
        var dp: [Int] = Array(repeating: -1, count: n+1)

        for index in 0..<n+1 {
            /// Handling the base cases
            if index < 2 {
                dp[index] = index
            } else {
                dp[index] = dp[index-1] + dp[index-2]
            }
        }
        return dp[n]
    }
}