class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stack: [Int] = []

        for operation in operations {
            if operation == "+" {
                if stack.count >= 2 {
                    let n = stack.count-1
                    let sum = stack[n] + stack[n-1]
                    stack.append(sum)
                }
            } else if operation == "D" {
                if !stack.isEmpty {
                    stack.append(stack.last! * 2)
                }

            } else if operation == "C" {
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else {
                stack.append(Int(operation)!)
            }
        }

        return stack.reduce(0,+)
    }
}