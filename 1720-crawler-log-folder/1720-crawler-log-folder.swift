class Solution {
    func minOperations(_ logs: [String]) -> Int {
        var stack: [String] = []

        for log in logs {
            if log.hasSuffix("../") {
                stack = stack.dropLast()
            } else if log.hasSuffix("./") {
                ///do nothing
            } else {
                stack.append(log)
            }
        }

        return stack.count
    }
}