class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result: [Int] = digits
        var carry = 0
        var count = digits.count

        for i in (0..<digits.count).reversed() {
            if i == count-1 || carry == 1 {
                result[i] = result[i] + 1
                if result[i] > 9 {
                    result[i] = result[i]%10
                    carry = 1
                } else {
                    carry = 0
                }
            }  else {
                break
            }
        }

        if carry == 1 {
            result.insert(1, at: 0)
        }

        return result
    }
}