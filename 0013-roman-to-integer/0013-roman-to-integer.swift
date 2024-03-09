class Solution {
    func romanToInt(_ s: String) -> Int {
        var s = Array(s)
        

        let hash: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        var sum = hash[s.last!]!
        for i in (0..<s.count-1).reversed() {
            if hash[s[i]]! < hash[s[i+1]]! {
                sum -= hash[s[i]]!
            } else {
                sum += hash[s[i]]!
            }

        }
        return sum
    }
}