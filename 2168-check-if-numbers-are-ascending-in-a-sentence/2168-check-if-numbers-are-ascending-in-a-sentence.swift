class Solution {
    func areNumbersAscending(_ s: String) -> Bool {
        var list = s.components(separatedBy: " ")
        var prev = 0

        for item in list {
            if let num = Int(item) {
                if num <= prev {
                    return false
                }
                prev = num
            }
        }

        return true
    }
}