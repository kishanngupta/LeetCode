class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var dp: [[Int]] = Array(repeating: Array(repeating: -1, count: 2), count: prices.count)
        return profit(0,1,prices,&dp)
    }
    
    private func profit(_ index:Int,_ canBuy: Int,_ prices: [Int],_ dp: inout [[Int]]) -> Int {
        if index > prices.count-1 {
            return 0
        }
        
        if dp[index][canBuy] != -1 {
            return dp[index][canBuy]
        }
        
        if canBuy == 1 {
            let buy = -prices[index] + profit(index+1, 0, prices, &dp)
            let not = profit(index+1, 1, prices, &dp)
            dp[index][canBuy] = max(buy, not)
        } else {
            let sell = prices[index] + profit(index+2, 1, prices, &dp)
            let not = profit(index+1, 0, prices,&dp)
            dp[index][canBuy] = max(sell,not)
        }
        return dp[index][canBuy]
    }
}