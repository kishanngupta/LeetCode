class Solution {
    func intersection(_ nums: [[Int]]) -> [Int] {
        var hash: [Int: Int] = [:]

        for num in nums.first ?? [] {
            hash[num, default: 0] += 1
        }

        for list in nums {
            var temp: [Int: Int] = [:]
            for num in list {
                if let value = hash[num] {
                    temp[num, default: 0] += 1
                    if value == 1 {
                        hash[num] = 1
                    } else {
                        hash[num] = (value-1)
                    }
                }
            }
            hash = temp
        }
        return Array(hash.keys).sorted()
    }
}