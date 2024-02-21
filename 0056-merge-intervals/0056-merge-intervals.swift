class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var intervals = intervals.sorted { $0[0] < $1[0]}
        var result: [[Int]] = []

        for item in intervals {
            if result.isEmpty {
                result.append(item)
            } else {
                let lastIndex = result.count-1
                let last = result.last!

                if last[1] >= item[1] {
                    
                } else if last[1] >= item[0] {
                    result[lastIndex][1] = item[1]
                } else if last[1] < item[0] {
                    result.append(item)
                }


            }
        }

        
        return result
    }
}