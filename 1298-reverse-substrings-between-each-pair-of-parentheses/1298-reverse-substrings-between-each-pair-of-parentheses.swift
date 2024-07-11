class Solution {
    func reverseParentheses(_ s: String) -> String {
        var stack: [Character] = []

        for char in s {
            if char == ")" {
                var temp = ""
                while stack.last! != "(" {
                    temp.append(stack.removeLast())
                }
                stack.removeLast()
                stack += Array(temp)
            } else {
                stack.append(char)
            }
        }

        return String(stack)
    }
}