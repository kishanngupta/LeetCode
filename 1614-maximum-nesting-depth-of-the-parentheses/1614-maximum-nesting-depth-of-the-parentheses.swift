class Solution {
    func maxDepth(_ s: String) -> Int {
        var stack: [Character] = []
        var maxi = 0
        
        for char in s {
            if char == "(" {
                stack.append(char)
                maxi = max(maxi, stack.count)
            } else if char == ")" {
                stack.removeLast()
            }
        }
        
        return maxi
    }
}