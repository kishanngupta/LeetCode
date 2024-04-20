final class Solution {
    func findFarmland(_ land: [[Int]]) -> [[Int]] {
        var coordinates: [[Int]] = []
        var land = land // to be able to mutate
        
        for i in 0..<land.count {
            for j in 0..<land[i].count where land[i][j] == 1{
                var topLeft = [i, j]
                var bottomRight = [i, j]
                explore(&land, i, j, &bottomRight)
                coordinates.append(topLeft + bottomRight)
            }
        }
        
        return coordinates
    }
    
    private func explore(_ land: inout [[Int]], _ i: Int, _ j: Int, _ bottomRight: inout [Int]) {
        guard
            i >= 0, j >= 0, // checking for
            i < land.count, j < land[i].count, // out of bounds
            land[i][j] == 1 // farm!
        else { return }
        
        land[i][j] = 0 // mark as visited
        
        if i > bottomRight[0] { bottomRight[0] = i } // updating
        if j > bottomRight[1] { bottomRight[1] = j } // bottom right
        
        explore(&land, i - 1, j, &bottomRight) // top
        explore(&land, i + 1, j, &bottomRight) // bottom
        explore(&land, i, j - 1, &bottomRight) // left
        explore(&land, i, j + 1, &bottomRight) // right
    }
}