class Solution {
    func makeGood(_ s: String) -> String {
        var stack: [Character] = []

        for char in s {
            if stack.isEmpty {
                stack.append(char)
            } else {
                let last = stack.last!
                if char.isUppercase && last == Character(char.lowercased()) {
                    stack.removeLast()
                } else if char.isLowercase && last == Character(char.uppercased()) {
                    stack.removeLast()   
                } else {
                    stack.append(char)
                }
            }
        }

        return String(stack)
    }
}