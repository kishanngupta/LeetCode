class Solution {
    func bagOfTokensScore(_ tokens: [Int], _ power: Int) -> Int {
        var power = power
        var tokens = tokens.sorted()
        var i = 0
        var j = tokens.count-1
        var score = 0
        var maxi = 0

        while(i<=j) {
            /// if power is greater than token at index i, than we can increase our scoew
            if power >= tokens[i] {
                score += 1
                power -= tokens[i]
                i+=1
            /// if power is lower than token at index i, then we have to increase our power
            /// power can be increase at the cost of score
            /// so check you have atleast one score to give up
            } else if score > 0 {
                score -= 1
                power += tokens[j]
                j-=1
            /// if score is 0, than we can't do anything
            } else {
                i+=1
                j-=1
            }
            maxi = max(maxi, score)
        }
        return maxi
    }
}