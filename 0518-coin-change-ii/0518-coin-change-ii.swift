class Solution {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        var dp:[[Int]] = Array(
            repeating: Array(
                repeating: -1,
                count: amount+1
            ),
            count: coins.count
        )
        return count(coins.count-1, amount, coins, &dp)
    }

    private func count(_ index: Int,_ amount: Int,_ coins: [Int],_ dp: inout [[Int]]) -> Int {
        if index == 0 {
            return amount%coins[0] == 0 ? 1 : 0
        }

        if dp[index][amount] != -1 {
            return dp[index][amount]
        }

        let notTake = count(index-1, amount, coins, &dp)
        var take = 0
        if amount >= coins[index] {
            take = count(index, amount-coins[index], coins, &dp)
        }
        dp[index][amount] = take + notTake
        return dp[index][amount]
    }
}