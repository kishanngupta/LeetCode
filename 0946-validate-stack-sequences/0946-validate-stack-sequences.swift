class Solution {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var popped = popped
        var stack: [Int] = []

        for num in pushed {
            stack.append(num)
            
            while(!stack.isEmpty && !popped.isEmpty && stack.last == popped.first) {
                stack.removeLast()
                popped.removeFirst()
            }
        }

        return stack.isEmpty && popped.isEmpty
    }
}