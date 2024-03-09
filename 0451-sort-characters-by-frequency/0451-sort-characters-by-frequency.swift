class Solution {
    func frequencySort(_ s: String) -> String {
        var hash: [Character: (Character, Int)] = [:]
        var result = ""

        for char in s {
            if let tuple = hash[char] {
                let value = tuple.1 + 1
                hash[char] = (tuple.0, value)
            } else {
                hash[char] = (char, 1)
            }
        }
        
        for tuple in hash.values.sorted{ $0.1 > $1.1 } {
            for _ in 0..<tuple.1 {
                result += String(tuple.0)
            }
        }
        return result
    }
}