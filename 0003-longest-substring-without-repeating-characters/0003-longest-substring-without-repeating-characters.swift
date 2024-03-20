class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = Array(s)
        var i = 0
        var j = 0
        var maxi=0
        var hash:[Character: Int] = [:]

        while(j<s.count) {
            let char = s[j]
            if let value = hash[char] {
                for k in i...value {
                    hash[s[k]] = nil
                }
                hash[char] = j
                i = value+1
            } else {
                hash[char] = j
                maxi = max(maxi,j-i+1)
            }
            j+=1
        }
        return maxi
    }
}