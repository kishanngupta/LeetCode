class Solution {
    func numberOfSubstrings(_ s: String) -> Int {
        var s = Array(s)
        var lastSeen: [Character: Int] = ["a": -1, "b": -1, "c": -1]
        var count = 0
        var left = 0

        for i in s.indices {
            lastSeen[s[i]] = i
            
            if !lastSeen.values.contains(-1) {
                count += 1 + min(lastSeen["a"]!, lastSeen["b"]!, lastSeen["c"]!)
            }
        }
        
        return count
    }
}