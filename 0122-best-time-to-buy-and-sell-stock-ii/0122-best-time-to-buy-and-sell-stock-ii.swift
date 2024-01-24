class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        /// Its a Dp of 2D array
        /// first array represents the list of prices
        /// second represents the option to buy or not /// it's a bool - 0 or 1
        var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 2), count: prices.count)
        return profit(0,1, prices, &dp)
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