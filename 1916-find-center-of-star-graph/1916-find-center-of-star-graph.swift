class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        let null = edges[0][0]
        return (null == edges[1][0] || null == edges[1][1]) ? null : edges[0][1]
    }
}