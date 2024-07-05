class Solution {
    func rotate(_ matrix: inout [[Int]]) {

        for i in matrix.indices {
            for j in matrix[0].indices {
                if j <= i {
                    let temp = matrix[i][j]
                    matrix[i][j] = matrix[j][i]
                    matrix[j][i] = temp
                }
            }
        }

        for i in matrix.indices {
            matrix[i].reverse()
        }
        
    }
}