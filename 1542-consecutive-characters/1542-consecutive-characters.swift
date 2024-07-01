class Solution {
    func maxPower(_ s: String) -> Int {
        var s = Array(s)
        var power = 1
        var maxo = 1

        for index in s.indices {
            if index == 0 { continue }
            if s[index] == s[index-1] {
                power += 1
                maxo = max(maxo, power)
            } else {
                power = 1
            }
        }
        return maxo
    }
}