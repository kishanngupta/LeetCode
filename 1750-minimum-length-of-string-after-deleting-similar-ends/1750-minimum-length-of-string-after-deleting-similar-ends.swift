class Solution {
    func minimumLength(_ s: String) -> Int {
        if s.count == 1 { return 1 }
        
        var str: [Character] = Array(s)
        var i = 0
        var j = str.count-1

        if str[i] != str[j] {
            return str.count
        }

        while(i<j && str[i] == str[j]) {

            while(i+1<j && str[i] == str[i+1]) {
                i+=1
                if i+1 == j { return 0 }
            }

            while(i+1<j && str[j] == str[j-1]) {
                j-=1
                if i+1 == j { return 0 }
            }
            
            if i+1 == j { return 0 }

            i+=1
            j-=1
        }
        return j-i+1
    }
}