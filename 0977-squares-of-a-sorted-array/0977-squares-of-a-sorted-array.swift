class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var positive: [Int] = []
        var negative: [Int] = []

        for item in nums {
            if item < 0 {
                negative.insert(item*item, at: 0)
            } else {
                positive.append(item*item)
            }
        }

        var result: [Int] = []
        var i = 0
        var j = 0

        while(i<positive.count && j<negative.count) {
            // print(positive[i], negative[j], i, j)
            if positive[i] < negative[j] {
                result.append(positive[i])
                i+=1
            } else {
                result.append(negative[j])
                j+=1
            }
        }

        while(i<positive.count) {
            result.append(positive[i])
            i+=1
        }

        while(j<negative.count) {
            result.append(negative[j])
            j+=1
        }
        return result
    }
}