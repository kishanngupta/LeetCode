class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let s = Array(s)

        var l = 0
        var r = s.count - 1
        while l < r && s[l] == s[r] {
            l += 1
            r -= 1
        }

        // No deletion needed.
        if l >= r { return true }

        func checkValid(_ l: Int, _ r: Int) -> Bool {
            var l = l
            var r = r
            while l < r && s[l] == s[r] {
                l += 1
                r -= 1
            }
            return l >= r
        }

        return checkValid(l + 1, r) || checkValid(l, r - 1)
    }
}