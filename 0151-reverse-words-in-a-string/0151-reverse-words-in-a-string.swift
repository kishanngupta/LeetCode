class Solution {
    func reverseWords(_ s: String) -> String {
        var list = s.components(separatedBy: " ")
        list.reverse()
        list = list.filter { !$0.isEmpty }
        return list.joined(separator: " ")
    }
}