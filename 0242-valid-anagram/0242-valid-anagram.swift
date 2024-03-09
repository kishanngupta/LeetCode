class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }
        var hash: [Character: Int] = [:]

        for char in s {
            hash[char, default: 0] += 1
        }

        for key in t {
            if var value = hash[key] {
                value -= 1
                hash[key] = value == 0 ? nil : value
            } else {
                return false
            }
        }
        return true
    }
}