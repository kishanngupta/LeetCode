class Solution {
    func maximumHappinessSum(_ happiness: [Int], _ k: Int) -> Int {
        var happiness = happiness.sorted{ $0 > $1 }
        var i = 0
        var result = 0

        for happy in happiness {
            if i == k {
                break
            } else if happy-i >= 0 {
                result += (happy - i)
            }
            i+=1
        }

        return result
    }
}