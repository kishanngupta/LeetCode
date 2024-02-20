class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        let n = matrix.count
        let m = matrix[0].count
        var top = 0
        var left = 0
        var right = m-1
        var bottom = n-1
        var count = 0
        var result: [Int] = []
        let total = n*m

        while(count < total) {
            for i in left...right {
                result.append(matrix[top][i])
                count+=1
            }
            top += 1

            if !(count < total) { break }
            for i in top...bottom {
                result.append(matrix[i][right])
                count+=1
            }
            right -= 1

            if !(count < total) { break }
            for i in (left...right).reversed() {
                result.append(matrix[bottom][i])
                count+=1
            } 
            bottom -= 1

            if !(count < total) { break }
            for i in (top...bottom).reversed() {
                result.append(matrix[i][left])
                count+=1
            }
            left += 1
        }

        return result
    }
}