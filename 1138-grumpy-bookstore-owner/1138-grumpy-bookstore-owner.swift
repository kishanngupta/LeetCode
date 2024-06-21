class Solution {
    func maxSatisfied(_ customers: [Int], _ grumpy: [Int], _ minutes: Int) -> Int {
        var left = 0
        var satisfied = 0
        var window = 0
        var maxWindow = 0

        for right in 0..<customers.count {
            if grumpy[right] == 1 {
                window += customers[right]
            } else {
                satisfied += customers[right]
            }

            if right-left+1 > minutes {
                if grumpy[left] == 1 {
                    window -= customers[left]
                }
                left += 1
            }
            maxWindow = max(maxWindow, window)
        }

        return satisfied + maxWindow
    }
}