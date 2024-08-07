class Solution {
    func countPalindromicSubsequence(_ s: String) -> Int {
        var res: Set<String> = []
        var left: Set<Character> = []
        var right: [Character: Int] = [:]

        for char in s {
            right[char, default: 0] += 1
        }

        for char in s {
            let count = right[char]! - 1
            right[char] = count == 0 ? nil : count
            
            for i in 97...122 {
                let alpha = Character("\(UnicodeScalar(i)!)")
                if left.contains(alpha) && right[alpha] != nil {
                    res.insert("\(alpha)\(char)\(alpha)")
                }
            }
            left.insert(char)
        }

        return res.count
    }
}