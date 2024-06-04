class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var set: Set<Character> = []
        var result = 0

        for char in s {
            if set.contains(char) {
                set.remove(char)
                result += 2
            } else {
                set.insert(char)
            }
        }

        if !set.isEmpty {
            result += 1
        }
        return result
    }
}