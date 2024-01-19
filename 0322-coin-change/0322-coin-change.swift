class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var dp: [[Int?]] = Array(
            repeating: Array(repeating: nil, count: amount+1), 
            count: coins.count)
            let value = change(coins.count-1, amount, coins, &dp)
        return value == 10001 ? -1 : value
    }

    private func change(_ index: Int,_ amount: Int,_ coins: [Int],_ dp: inout [[Int?]]) -> Int {

        if index == 0 {
            if amount%coins[0] == 0 {
                return amount/coins[0]
            }
            return 10001
        }

        if let value = dp[index][amount] {
            return value
        }

        let notTake = change(index-1, amount, coins, &dp)
        var take = 10001
        if amount >= coins[index] {
            take = 1 + change(index, amount-coins[index], coins, &dp)
        }
        dp[index][amount] = min(take,notTake)
        return dp[index][amount]!
    }
}