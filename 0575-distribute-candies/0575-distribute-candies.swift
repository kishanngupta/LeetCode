class Solution {
    func distributeCandies(_ candyType: [Int]) -> Int {
        var hash: [Int: Int] = [:]
        for candy in candyType {
            hash[candy, default: 0] += 1
        }
        
        return candyType.count/2 < hash.keys.count ? candyType.count/2 : hash.keys.count
    }
}