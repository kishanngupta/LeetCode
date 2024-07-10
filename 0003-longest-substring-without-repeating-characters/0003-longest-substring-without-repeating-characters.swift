class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var s = Array(s)
        var hash: [Character: Bool] = [:]
        var count = 0
        var left = 0

        for right in 0..<s.count {
            let char = s[right]
            
            while hash[char] != nil {
                let leftChar = s[left]
                hash[leftChar] = nil
                left+=1
            }
            hash[char] = true

            count = max(count, right-left+1)
        }
        return count
    }
}