class Solution {
    func findRelativeRanks(_ score: [Int]) -> [String] {

        var sortedScore = score.sorted{$0 > $1}
        var hash: [Int: Int] = [:]
        for (i, item) in sortedScore.enumerated() {
            hash[item] = (i+1)
        }
        
        var result: [String] = []
        for item in score {
            if hash[item] == 1 {
                result.append("Gold Medal")
            } else if hash[item] == 2 {
                result.append("Silver Medal")
            } else if hash[item] == 3 {
                result.append("Bronze Medal")
            } else {
                result.append(String(hash[item]!))
            }
        }

        return result
    }
}