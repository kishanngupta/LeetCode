class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var sum = 0
        var hash: [Int:Int] = [0:1]
        var count = 0

        for item in nums {
            sum += item

            let rem = sum-k
            if let value = hash[rem] {
                count += value
            }

            if var value = hash[sum] {
                value += 1
                hash[sum] = value
            } else {
                hash[sum] = 1
            }

        }

        return count
    }
}