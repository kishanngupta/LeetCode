class Solution {
    func partition(_ s: String) -> [[String]] {
        var result: [[String]] = []
        var path: [String] = []
        cal(0,Array(s),&path,&result)
        return result
    }

    private func cal(
        _ index: Int, 
        _ s: [Character],
        _ path:inout [String],
        _ result:inout [[String]]
    ) {
        if index == s.count {
            result.append(path)
            return
        }

        for i in index..<s.count {
            if isPalindrone(index, i, s) {
                path.append(String(s[index...i]))
                cal(i+1,s,&path,&result)
                path.removeLast()
            }
        }

    }

    private func isPalindrone(_ i: Int,_ j: Int,_ s: [Character]) -> Bool {
        var i = i
        var j = j

        while (i<=j) {
            if s[i] != s[j] {
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }
}