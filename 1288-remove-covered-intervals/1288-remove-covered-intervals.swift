class Solution {
    func removeCoveredIntervals(_ intervals: [[Int]]) -> Int {
        var intervals = intervals.sorted {$0[0] < $1[0] }
        var count = intervals.count
        var prev = intervals.first!

        for interval in intervals.dropFirst() {
            if interval[0] >= prev[0] && interval[1] <= prev[1] {
                count -= 1
            } else if interval[0] == prev[0] && interval[1] >= prev[1] {
                count -= 1
                prev[1] = interval[1]
            } else {
                prev = interval
            }
        }
        return count
        
        /// Space: O(n) approach
        /*
        var result = [intervals.first!]
        for interval in intervals.dropFirst() {
            
            if result.last![0] <= interval[0] && result.last![1] >= interval[1] {
                continue
            }
            result.append(interval)
        }
        
        return result.count
        */

        
    }
}