
final class Solution {
    func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
        var hash: [Int: Int] = [:]
        var result: [Int] = []

        for item in arr1 {
            hash[item, default: 0] += 1
        }

        for item in arr2 {
            let freq = hash[item]!
            let list = Array(repeating: item, count: freq)
            result += list
            hash[item] = nil
        }

        for item in hash.keys.sorted() {
            let freq = hash[item]!
            let list = Array(repeating: item, count: freq)
            result += list
            hash[item] = nil
        }

        return result
    }
}