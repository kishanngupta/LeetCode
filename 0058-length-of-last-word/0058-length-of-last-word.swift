class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var s = s.trimmingCharacters(in: .whitespaces)
        return s.components(separatedBy: " ").last?.count ?? 0
    }
}