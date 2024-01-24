class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        /// Its a Dp of 2D array
        /// first array represents the list of prices
        /// second represents the option to buy or not /// it's a bool - 0 or 1
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: n+1)
        dp[n][0] = 0
        dp[n][1] = 0

        for i in (0..<n).reversed() {
            for j in (0..<2) {
                if j == 1 {
                    let buy = -prices[i] + dp[i+1][0]
                    let notBuy = dp[i+1][1]
                    dp[i][j] = max(buy, notBuy)
                } else {
                    let sold = prices[i] + dp[i+1][1]
                    let notSell = dp[i+1][0]
                    dp[i][j] = max(sold, notSell)
                }
            }
        }
        
        return dp[0][1]
        // return profit(0,1, prices, &dp)
    }
    
    private func profit(_ i: Int,_ j: Int,_ prices: [Int],_ dp: inout [[Int]]) -> Int {
        
        if i == prices.count {
            return 0
        } else if dp[i][j] != -1 {
            return dp[i][j]
        }
        /// j represents the can buy flag
        if j == 1 {
            let buy = -prices[i] + profit(i+1,0, prices, &dp)
            let notBuy = profit(i+1, 1,prices, &dp)
            dp[i][j] = max(buy, notBuy)
        } else {
            let sold = prices[i] + profit(i+1, 1, prices, &dp)
            let notSell = profit(i+1, 0, prices, &dp)
            dp[i][j] = max(sold, notSell)
        }
        return dp[i][j]
    }
}