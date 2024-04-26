class Solution {
    func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
        
        var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: mat[0].count), count: mat.count)
        var distance: [[Int]] = Array(repeating: Array(repeating: 0, count: mat[0].count), count: mat.count)
        var queue: [[Int]] = []

        for i in 0..<mat.count {
            for j in 0..<mat[0].count {
                /// nodes which are already zero, mark them visited with 0 distance
                if mat[i][j] == 0 {
                    queue.append([i,j,0])
                    visited[i][j] = true
                }
            }
        }

        let rowList = [-1,0,+1,0]
        let colList = [0,+1,0,-1]

        while !queue.isEmpty {
            let list = queue.removeFirst()
            let row = list[0]
            let col = list[1]
            let dis = list[2]
            distance[row][col] = dis

            /// Search in all 4 for direction
            /// up, down, left and right
            for i in 0..<4 {
                var newRow = row + rowList[i]
                var newCol = col + colList[i]
                // Check for boundary conditions
                if newRow >= 0 && newCol >= 0 && newRow < mat.count && newCol < mat[0].count &&
                    visited[newRow][newCol] == false {
                        visited[newRow][newCol] = true
                        queue.append([newRow,newCol, dis+1])
                }
            }
        }

        return distance
    }
}