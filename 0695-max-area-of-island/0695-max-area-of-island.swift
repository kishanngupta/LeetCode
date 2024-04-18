class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var visited: [[Bool]] = Array(
                                    repeating: Array(repeating: false, count: grid[0].count),
                                count: grid.count)
        var maxArea = 0

        func dfs(_ i: Int,_ j: Int) -> Int{
            if i>=grid.count || j>=grid[0].count || i<0 || j<0 || grid[i][j] == 0 || visited[i][j] {
                return 0
            } 

            visited[i][j] = true
            var area = dfs(i,j+1)
            area += dfs(i,j-1)
            area += dfs(i+1,j)
            area += dfs(i-1,j)
            return area + 1
        }

        for i in grid.indices {
            for j in grid[0].indices {
                if grid[i][j] == 1 && visited[i][j] == false {
                    maxArea = max(maxArea, dfs(i,j) )
                }
            }
        }
        
        return maxArea
    }
}