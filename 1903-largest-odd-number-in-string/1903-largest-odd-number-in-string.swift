class Solution {
    func largestOddNumber(_ num: String) -> String {
        var s = num

        for item in num.reversed() {
            if item == "0" || item == "2" || item == "4" || item == "6" || item == "8" {
                s.removeLast()
            } else {
                return s
            }
        }

        return s
    }
}