class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var stack: [String] = []
        var result: [String] = []
        
        generate(0,0)

        func generate(_ open: Int,_ close: Int) {
            if open == n && close == n {
                let string = stack.joined()
                result.append(string)
                return
            }

            if open < n {
                stack.append("(")
                generate(open+1, close)
                stack.removeLast()
            }

            if close < open {
                stack.append(")")
                generate(open, close+1)
                stack.removeLast()
            }
        }

        return result
    }
}