class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var newIntervals: [[Int]] = []
        var newInterval = newInterval

        for (i, item) in intervals.enumerated() {
            if newInterval.last! < item.first! {
                newIntervals.append(newInterval)
                newIntervals += intervals[i..<intervals.count]
                return newIntervals
            } else if newInterval.first! > item.last! {
                newIntervals.append(item)
            } else {
                newInterval = [
                    min(item.first!, newInterval.first!), max(item.last!, newInterval.last!)
                ]
            }
        }
        newIntervals.append(newInterval)
        return newIntervals
    }
}