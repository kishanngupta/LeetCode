class Solution {
    func predictPartyVictory(_ senate: String) -> String {
        var senate = Array(senate)
        var i = 0

        /// Loop till all other party senator got removed.
        while senate.count > 1 {
            var j = (i+1)%senate.count
            var count = 0
            /// if senator is of same party, skip.
            while senate[j] == senate[i] && count<senate.count {
                j = (j+1)%senate.count
                count += 1
            }
            /// Break if another party senator is removed completly
            if count == senate.count {
                break 
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