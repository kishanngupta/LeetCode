class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var stack: [Character] = Array(strs.first!)

        for i in 1..<strs.count {
            let element = Array(strs[i])            
            
            var i = 0
            while(i<stack.count && i<element.count && element[i] == stack[i]) {
                i = i+1
            }
            stack = Array(stack[0..<i])

        }

        return String(stack)
    }
}