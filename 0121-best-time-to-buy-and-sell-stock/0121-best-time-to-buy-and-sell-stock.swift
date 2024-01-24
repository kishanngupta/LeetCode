class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buyPrice = prices[0]
        var profit = 0

        for price in prices {
            if (price-buyPrice) > profit {
                profit = (price-buyPrice)
            }

            buyPrice = min(buyPrice, price)
        }
        return profit
    }
}