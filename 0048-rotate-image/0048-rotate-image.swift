class Solution {
    func rotate(_ matrix: inout [[Int]]) {

        for i in 0..<matrix.count {
            for j in i+1..<matrix.count {
                    let temp = matrix[i][j]
                    matrix[i][j] = matrix[j][i]
                    matrix[j][i] = temp
            }
            matrix[i].reverse()
        }
    }
}