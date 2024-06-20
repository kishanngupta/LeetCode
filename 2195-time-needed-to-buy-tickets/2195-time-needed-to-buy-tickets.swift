class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        var tickets = tickets
        var i = 0
        var count = 0

        while true {
            let j = i % tickets.count
            
            if tickets[k] == 0 {
                return count
            } else if tickets[j] != 0 {
                tickets[j] -= 1
                count += 1
            }
            i+=1
        }

        return count
    }
}