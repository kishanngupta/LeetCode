class Solution {
    func checkValidString(_ s: String) -> Bool {
        var brackets:[Int] = []
        var stars:[Int] = []

        for (index,char) in s.enumerated() {
            if char == "*" {
                stars.append(index)
            } else if char == "(" {
                brackets.append(index)
            } else if char == ")" {
                if !brackets.isEmpty {
                    brackets.removeLast()
                } else if !stars.isEmpty {
                    stars.removeLast()
                } else {
                    return false
                }
            }
        }

        while !brackets.isEmpty && !stars.isEmpty {
            let bracketPos = brackets.removeLast()
            let starPos = stars.removeLast()
            if bracketPos > starPos {
                return false
            }
        }
        return brackets.isEmpty
    }
}