class Solution {
    func predictPartyVictory(_ senate: String) -> String {
        var senate = Array(senate)
        var i = 0

        while senate.count > 1 {
            var j = (i+1)%senate.count
            var count = 0
            while senate[j] == senate[i] && count<senate.count {
                j = (j+1)%senate.count
                count += 1
            }

            senate.remove(at: j)
            if j>i {
                i+=1
            }
            i = i%senate.count
        }
        
        if senate[0] == "R" {
            return "Radiant"
        } else {
            return "Dire"
        }
        
    }
}