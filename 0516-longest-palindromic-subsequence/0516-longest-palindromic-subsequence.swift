class Solution {
    func longestPalindromeSubseq(_ s: String) -> Int {
        var n = s.count
        var s1 = Array(s)
        var s2 = Array(s.reversed())
        
        var prev = Array(repeating: 0, count: n+1)
        var cur = Array(repeating: 0, count: n+1)
        
        for i in 1...n {
            for j in 1...n {
                if s1[i-1] == s2[j-1] {
                    cur[j] = 1 + prev[j-1]
                } else {
                    var first = prev[j]
                    var second = cur[j-1]
                    cur[j] = max(first, second)
                }
            }
            prev = cur
        }
        
        return cur[n]
    }
}