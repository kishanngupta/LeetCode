class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        var l = 0, r = Int(sqrt(Double(c)))

        while l <= r {
           var total = l * l + r * r 
           if total > c {
                r -= 1
           } else if total < c {
                l += 1
           } else {
            return true
           }
        }
        return false
    }
}