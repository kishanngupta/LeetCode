class Solution {
    func longestPalindrome(_ s: String) -> String {
        var start = 0
        var end = 0
        var s = Array(s)

        for i in 0..<s.count {
            let odd = expand(i,i,s)
            let even = expand(i,i+1,s)
            let len = max(odd,even)

            if len > (end-start) {
                start = i - ((len-1)/2)
                end = i + len/2
            }
        }
        let string = s[start...end]
        return String(string)
    }

    private func expand(_ i: Int,_ j: Int, _ s: [Character]) -> Int {
        var i=i
        var j=j

        while(i>=0 && j<s.count && s[i] == s[j]) {
            i-=1
            j+=1
        }
        return j-i-1
    }
}