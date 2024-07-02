class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var hash: [Int: Int] = [:]
        var result: [Int] = []

        for num in nums1 {
            hash[num, default: 0] += 1
        }

        for num in nums2 {
            if let value = hash[num] {
                result.append(num)
                
                if value == 1 {
                    hash[num] = nil
                } else {
                    hash[num]! -= 1
                }
            }
        }
        
       return result
    }
}