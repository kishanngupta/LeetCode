class Solution {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        if s.count > goal.count { return false }
        return "\(s)\(s)".contains(goal)
    }
}