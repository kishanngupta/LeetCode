class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        if c < 0 { return false }
        if c == 0 || c == 1 || c == 2 { return true }
        for i in 0...Int(sqrt(Double(c))) {
            let val = sqrt(Double(c - i * i))
            if val == Double(Int(val)) { return true }
        }
        return false
    }
}