class Solution {
    func maxFrequencyElements(_ nums: [Int]) -> Int {
        var hash: [Int: Int] = [:]
        var maxi = 1
        
        for item in nums {
            if var value = hash[item] {
                value += 1
                hash[item] = value
                maxi = max(maxi, value)
            } else {
                hash[item] = 1
            }
        }
        // print(maxi)
        var count = 0
        for item in hash.keys {
            if hash[item] == maxi {
                count += maxi
            }
        }
        return count
    }
}