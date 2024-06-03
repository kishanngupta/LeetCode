class Solution {
    func reverse(_ x: Int) -> Int {
        var result: Int = 0
        var x = x

        while x != 0 {
            result = result*10 + x%10
            x = x/10
        }

        if result > 2147483647 || result < -2147483648 {
            return 0
        }
        return result
    }
}