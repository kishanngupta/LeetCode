class Solution {
    func candy(_ ratings: [Int]) -> Int {
        var result: [Int] = Array(repeating: 1, count: ratings.count)
        var output = 0
        
        for i in 1..<result.count {
            if ratings[i - 1] < ratings[i] {
                result[i] = result[i - 1] + 1
            }
        }
        output = result.last!
        for index in (0..<result.count-1).reversed() {
            if ratings[index] > ratings[index + 1] {
                result[index] = max(result[index], result[index + 1] + 1)
            }
            output += result[index]
        }        
        return output
    }
}