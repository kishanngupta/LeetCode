class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        var stack: [Character] = []
        var result: [Character] = []

        for char in s {
            if char == "#" {
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else {
                stack.append(char)
            }
        }

        result = stack
        stack = []

        for char in t {
            if char == "#" {
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else {
                stack.append(char)
            }
        }

        return result == stack
    }
}