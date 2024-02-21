class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        var col0 = 1

        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                if matrix[i][j] == 0 {
                    if j == 0 {
                        col0 = 0
                    } else {
                        matrix[i][0] = 0
                        matrix[0][j] = 0
                    }
                }
            }
        }

        for i in 1..<matrix.count {
            for j in 1..<matrix[0].count {
                if matrix[0][j] == 0 || matrix[i][0] == 0 {
                    matrix[i][j] = 0
                }
            }
        }

        if matrix[0][0] == 0 {
            for i in 0..<matrix[0].count {
                matrix[0][i] = 0
            }
        }

        if col0 == 0 {
            for i in 0..<matrix.count {
                matrix[i][0] = 0
            }
        }
    }
}