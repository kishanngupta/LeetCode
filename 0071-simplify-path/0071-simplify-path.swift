class Solution {
    func simplifyPath(_ path: String) -> String {
        var stack: [String] = []
        var curr = ""

        for char in (path+"/") {
            if char == "/" {
                if curr == ".." {
                    if !stack.isEmpty {
                        stack.removeLast()
                    }
                } else if !curr.isEmpty && curr != "." {
                    stack.append(curr)
                }
                curr = ""
            } else {
                curr += String(char)
            }
        }

        return "/" + stack.joined(separator: "/")
    }
}