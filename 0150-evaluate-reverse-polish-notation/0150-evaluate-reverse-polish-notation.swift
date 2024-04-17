class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack: [Int] = []

        for token in tokens {
            
            if token == "+" {
                let last = stack.removeLast()
                let secondLast = stack.removeLast()
                stack.append(last + secondLast)
            } else if token == "-" {
                let last = stack.removeLast()
                let secondLast = stack.removeLast()
                stack.append( secondLast-last)
            } else if token == "*" {
                let last = stack.removeLast()
                let secondLast = stack.removeLast()
                stack.append(last * secondLast)
            } else if token == "/" {
                let last = stack.removeLast()
                let secondLast = stack.removeLast()
                stack.append(Int(secondLast/last))
            } else {
                stack.append(Int(token)!)
            }
        }
        return stack.first!
    }
}