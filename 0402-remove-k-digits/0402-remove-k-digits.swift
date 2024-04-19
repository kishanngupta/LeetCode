class Solution {
    func removeKdigits(_ num: String, _ k: Int) -> String {
        if k >= num.count { return "0"}
        var count = 0
        var stack = ""

        for digit in num {
            while !stack.isEmpty && count < k && stack.last! > digit {
                stack.removeLast()
                count += 1
            }

            if stack.isEmpty && digit == "0" { continue }

            stack.append(digit)
        }

        while !stack.isEmpty && count < k  {
            stack.removeLast()
            count += 1
        }

        return stack.isEmpty ? "0" : stack
        
    }
}