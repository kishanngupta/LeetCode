class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var n = prices.count
        var dp:[[[Int]]] = Array(repeating: Array(repeating: Array(repeating: -1, count: 2), count: 2), count: n)
        return cal(0, 1, 0, prices, &dp)
    }
    
    private func cal(
        _ index: Int,
        _ canBuy: Int,
        _ cap: Int,
        _ prices: [Int],
        _ dp: inout [[[Int]]]) -> Int {
        
        if index == prices.count || cap == 2 {
            return 0
        } else if dp[index][canBuy][cap] != -1 {
            return dp[index][canBuy][cap]
        }

        if canBuy == 1 {
            let buy = -prices[index] + cal(index+1, 0, cap, prices, &dp)
            let not = cal(index+1, 1, cap, prices, &dp)
            dp[index][canBuy][cap] = max(buy, not)
        } else {
            let sell = prices[index] + cal(index+1, 1, cap+1, prices, &dp)
            let not = cal(index+1, 0, cap, prices, &dp)
            dp[index][canBuy][cap] = max(sell, not)
        }
        return dp[index][canBuy][cap]
    }
}