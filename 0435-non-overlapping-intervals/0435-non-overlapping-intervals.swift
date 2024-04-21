class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        var intervals = intervals.sorted { $0[0] < $1[0] }
        var prevEnd = intervals.first![1]
        var count = 0

        for interval in intervals.dropFirst() {
            if interval[0] >= prevEnd {
                prevEnd = interval[1]
            } else {
                count += 1
                prevEnd = min(prevEnd, interval[1])
            }
        }

        return count
    }
}