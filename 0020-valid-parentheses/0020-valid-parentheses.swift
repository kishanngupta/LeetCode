class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []

        for char in s {
            if char == "(" || char == "{" || char == "[" {
                stack.append(char)
            } else if char == ")" && stack.last == "(" {
                stack.removeLast()
            } else if char == "}" && stack.last == "{" {
                stack.removeLast()
            } else if char == "]" && stack.last == "[" {
                stack.removeLast()
            } else {
                return false
            }
        }

        return stack.isEmpty
    }
}