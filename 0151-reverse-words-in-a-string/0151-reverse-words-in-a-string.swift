class Solution {
    func reverseWords(_ s: String) -> String {
        let s = s.trimmingCharacters(in: .whitespaces)
        let list = s.components(separatedBy: " ").filter {!$0.isEmpty}
        
        return list.reversed().joined(separator:" ")
    }
}