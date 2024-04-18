class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var visited: [[Bool]] = Array(repeating: 
                                    Array(repeating: false, count: grid[0].count), 
                                count: grid.count)
        

        func dfs(_ i: Int,_ j: Int) -> Int {
            if i>=grid.count || j>=grid[0].count || i<0 || j<0 || grid[i][j] == 0 {
                return 1
            } else if visited[i][j] == true {
                return 0
            }
            visited[i][j] = true
            var param = dfs(i,j+1)
            param += dfs(i,j-1)
            param += dfs(i+1,j)
            param += dfs(i-1,j)
            return param
        }

        for i in grid.indices {
            for j in grid[0].indices {
                if grid[i][j] == 1 {
                    return dfs(i,j)
                }
            }
        }
        return 0
    }
}