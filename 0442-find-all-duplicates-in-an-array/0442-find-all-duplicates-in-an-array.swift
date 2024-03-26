class Solution {
    
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var map: [Int: Int] = [:]    
        
        for num in nums {
            if let value = map[num] {
                map[num] = value + 1
            } else {
                map[num] = 1
            }
        }
        
        return Array((map.filter { key,value in
            return value == 2
        }).keys.map {$0})
        
        
    }
}