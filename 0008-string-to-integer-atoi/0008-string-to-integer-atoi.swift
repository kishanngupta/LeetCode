class Solution {
    func myAtoi(_ s: String) -> Int {
        var result: Int = 0
        var isNegative = false
        var s = s.trimmingCharacters(in: .whitespaces)
        
        if s.first == "+" {
            s.removeFirst()
        } else if s.first == "-" {
            isNegative = true
            s.removeFirst()
        }

        for (index,item) in s.enumerated() {
            if item == "+" || item == "-" || !item.isNumber { 
                break
            } else if item.isNumber {
                if isNegative {
                    result = result*10 - Int(String(item))!
                } else {
                    result = result*10 + Int(String(item))!
                }
            }

            if result > Int(Int32.max) {
                result = Int(Int32.max)
                break
            } else if result < Int(Int32.min) {
                result = Int(Int32.min)
                break
            }
        }

        return result
    }
}