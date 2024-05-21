class Solution {
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
        var n = grid.count
        if grid[0][0] == 1 || grid[n-1][n-1] == 1 { return -1 }
        else if n == 1 && grid[0][0] == 0 { return 1 }
        
        var queue: [(Int,(Int,Int))] = []
        var distance: [[Int]] = Array(repeating: Array(repeating: Int.max, count: n), count: n)
        distance[0][0] = 1
        queue.append((1,(0,0)))

        var rowList = [-1,-1,0,1,1,1,0,-1]
        var colList = [0,1,1,1,0,-1,-1,-1]

        while !queue.isEmpty {
            let element = queue.removeFirst()
            let dis = element.0
            let row = element.1.0
            let col = element.1.1

            print(dis)

            for i in 0..<rowList.count {
                let nRow = row+rowList[i]
                let nCol = col+colList[i]
                let nDis = dis+1
                if nRow >= 0 && nRow < n && nCol >= 0 && nCol < n && grid[nRow][nCol] == 0 && 
                nDis < distance[nRow][nCol] {
                    if nRow == n-1 && nCol == n-1 {
                        return nDis
                    }
                    distance[nRow][nCol] = nDis
                    queue.append((nDis, (nRow, nCol)))
                }
            }
        }



        return -1
    }
}