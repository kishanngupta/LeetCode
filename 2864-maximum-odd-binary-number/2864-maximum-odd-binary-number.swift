class Solution {
    func maximumOddBinaryNumber(_ s: String) -> String {
        var count = s.count
        var noOfOnes = 0
        var result = ""

        for item in s {
            if item == "1" {
                noOfOnes += 1
            }
        }

        for i in 0..<count-1 {
            if noOfOnes > 1 {
                result += "1"
                noOfOnes -= 1
            } else {
                result += "0"
            }
        }
        result += "1"
        return result
        
        
        
        
    }
}