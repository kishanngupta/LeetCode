class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        let points = points.sorted { $0.last! < $1.last! }
        var result = 1
        var currentEnd = points.first!.last!
    
        for arr in points {
            if currentEnd < arr.first! {
                currentEnd = arr.last!
                result += 1
            }
        }
    
        return result
    }
}