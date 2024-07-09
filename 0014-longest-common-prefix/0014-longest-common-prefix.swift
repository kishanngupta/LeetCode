class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = Array(strs.first!)

        for string in strs {
            let str = Array(string)
            var i = 0

            while i<result.count && i<str.count && str[i] == result[i] {
                i+=1
            }
            result = Array(result[0..<i])
        }

        return String(result)
    }
}