class Solution {
    func averageWaitingTime(_ customers: [[Int]]) -> Double {
        var totalWait = customers[0][1]
        var nextAvailableTime = customers[0][0] + customers[0][1]

        for i in 1..<customers.count {
            let customer = customers[i]

            if nextAvailableTime <= customer[0] {
                nextAvailableTime = customer[0] + customer[1]
            } else {
                nextAvailableTime += customer[1]
                totalWait += (nextAvailableTime - (customer[0] + customer[1]))
            }
            totalWait += customer[1]
        }

        return Double(totalWait)/Double(customers.count)
    }
}