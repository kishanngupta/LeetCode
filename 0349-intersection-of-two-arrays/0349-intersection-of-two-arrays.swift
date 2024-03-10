class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var hash: [Int: Int] = [:]

        for num in nums1 {
            hash[num, default: 0] = 1
        }

        for num in nums2 {
            if let value = hash[num] {
                hash[num] = 2
            }
        }

        for key in hash.keys {
            if hash[key]! != 2{
                hash[key] = nil
            } 
        }
        return Array(hash.keys)
    }
}