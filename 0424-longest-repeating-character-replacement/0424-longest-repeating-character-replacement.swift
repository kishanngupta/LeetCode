class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var s = Array(s)
        var left = 0
        var kk = 0
        var count = 0
        var maxFreq = 0
        var hash: [Character: Int] = [:]

        for right in s.indices {
            let char = s[right]
            hash[char, default: 0] += 1
            maxFreq = max(maxFreq, hash[char]!)

            while right-left+1 > maxFreq+k {
                hash[s[left]]! -= 1
                left += 1
            }
            count = max(count, right-left+1)
        }

        return count
    }
}