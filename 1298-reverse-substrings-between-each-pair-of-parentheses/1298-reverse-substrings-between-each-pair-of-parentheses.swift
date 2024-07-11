class Solution {
    func reverseParentheses(_ s: String) -> String {
        var stack: [String] = []

        for char in s {
            if char == ")" {
                var temp = ""
                while stack.last! != "(" {
                    temp.append(stack.removeLast())
                }
                stack.removeLast()
                for char in temp {
                    stack.append("\(char)")
                }
            } else {
                stack.append("\(char)")
            }
        }

        return stack.joined()
    }
}