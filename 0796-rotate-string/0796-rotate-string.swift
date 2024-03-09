class Solution {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        if s.count != goal.count { return false }
        var index = 0
        var goal = goal
        
        for i in 0..<s.count {
            let prefix = String(s.prefix(i+1))
            if !goal.contains(prefix) {
                index = i
                break
            }
        }
        
        let suffix = String(s.suffix(s.count-index))
        return goal.contains(suffix)
    }
}