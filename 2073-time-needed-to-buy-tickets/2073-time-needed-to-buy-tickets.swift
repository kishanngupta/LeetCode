class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        var tickets = tickets
        var k = k
        var i = 0
        var time = 0
        /// iterate till you don't buy all the tickets
        while(tickets[k] != 0) {
            /// if ith user have bought all tickets move to next one
            while tickets[i] == 0 {
                i+=1
                /// if list ends, start from begining
                if i == tickets.count {
                    i = 0
                }
            }
            /// reduce ticket buy one
            tickets[i] -= 1
            /// increase time by one
            time += 1
            
            i+=1
            /// if list ends, start from begining
            if i == tickets.count {
                i = 0
            }
            
        }

        return time
    }
}