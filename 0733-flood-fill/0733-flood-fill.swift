class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        if image[sr][sc] == color { 
            return image
        }
        var ans = image
        dfs(sr, sc)

        func dfs(_ row: Int, _ col: Int) {
            if row < 0 || col < 0 || row >= image.count || col >= image[0].count || 
                ans[row][col] == color || ans[row][col] != image[sr][sc] {
                    return
            }
                
                ans[row][col] = color
                dfs(row-1, col)
                dfs(row, col-1)
                dfs(row+1, col)
                dfs(row, col+1)
            
        }   
        return ans
    }
}