class Solution {
    func minimumChairs(_ s: String) -> Int {
        var stack: [Bool] = []
        var count = 0

        for char in s {
            if char == "E" {
                stack.append(true)
                count = max(count, stack.count)
            } else {
                stack.removeLast()
            }
        }

        return count
    }
}