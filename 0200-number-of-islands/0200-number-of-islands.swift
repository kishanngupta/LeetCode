class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {

        var visited = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        var count = 0

        for i in grid.indices {
            for j in grid[0].indices {
                if grid[i][j] == "1" && visited[i][j] == false {
                    count += 1
                    traverse(i,j)
                }
            }
        }

        func traverse(_ i: Int,_ j: Int) {
            if i>=grid.count || j>=grid[0].count || i < 0 || j < 0 || 
                visited[i][j] == true || grid[i][j] == "0" {
                return
            }

            visited[i][j] = true
            traverse(i, j+1)
            traverse(i, j-1)
            traverse(i+1, j)
            traverse(i-1, j)
        }

        return count
        
    }

    
}