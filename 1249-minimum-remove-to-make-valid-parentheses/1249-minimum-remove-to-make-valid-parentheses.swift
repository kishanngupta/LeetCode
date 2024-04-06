class Solution {
    func minRemoveToMakeValid(_ s: String) -> String {
        var stack: [Character] = []
        var count = 0
        var result: [Character] = []

        for char in s {
            if char == "(" {
                stack.append(char)
            } else if char == ")" && !stack.isEmpty {
                stack.removeLast()
                count += 1
            }
        }

        stack = []

        for char in s {
            if char == "(" && count > 0 {
                result.append(char)
                stack.append(char)
                count -= 1
            } else if char == ")" && !stack.isEmpty {
                result.append(char)
                stack.removeLast()
            } else if char != "(" && char != ")" {
                result.append(char)
            }
        }

        return String(result)
        
    }
}