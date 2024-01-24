class Solution {
    func maxProfit(_ prices: [Int], _ fee: Int) -> Int {
        var dp:[[Int]] = Array(repeating: Array(repeating: -1, count: 2), count: prices.count)
        return profit(0,1,fee,prices,&dp)
    }
    
    private func profit(_ index: Int,_ canBuy: Int,_ fee: Int,_ prices: [Int],_ dp: inout [[Int]]) -> Int {
        if index == prices.count {
            return 0
        }
        
        if dp[index][canBuy] != -1 {
            return dp[index][canBuy]
        }
        
        if canBuy == 1 {
            let buy = -prices[index] + profit(index+1, 0, fee, prices, &dp)
            let not = profit(index+1, 1, fee, prices, &dp)
            dp[index][canBuy] = max(buy, not)
        } else {
            let sell = prices[index] + profit(index+1, 1, fee, prices, &dp) - fee
            let not = profit(index+1, 0, fee, prices, &dp)
            dp[index][canBuy] = max(sell,not)
        }
        return dp[index][canBuy]
    }
}