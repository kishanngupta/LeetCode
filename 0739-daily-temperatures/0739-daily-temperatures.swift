class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: temperatures.count)
        var stack: [Int] = []

        for index in temperatures.indices {
            while !stack.isEmpty && temperatures[stack.last!] < temperatures[index] {
                let lastIndex = stack.removeLast()
                result[lastIndex] = index-lastIndex
            }
            stack.append(index)
        }

        return result
    }
}