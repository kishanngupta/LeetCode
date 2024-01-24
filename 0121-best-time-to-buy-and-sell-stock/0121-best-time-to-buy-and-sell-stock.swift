class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buyPrice = prices[0]
        var profit = 0

        for price in prices {
            let diff = (price-buyPrice)
            if diff > profit {
                profit = diff
            }

            buyPrice = min(buyPrice, price)
        }
        return profit
    }
}