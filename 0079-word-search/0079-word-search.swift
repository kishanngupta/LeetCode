class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var row = board.count
        var col = board[0].count
        var word = Array(word)
        var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: col), count: row)
        
        func dfs(_ i: Int,_ j:Int, _ k: Int) -> Bool {
            if k == word.count {
                return true
            } else if 
            i < 0 || j < 0 ||
            i == row || j == col || 
            word[k] != board[i][j] ||
            visited[i][j] {
                return false
            }

            visited[i][j] = true
            let res = dfs(i+1, j, k+1) || dfs(i-1, j, k+1) ||  dfs(i, j+1, k+1) || dfs(i, j-1, k+1)
            visited[i][j] = false
            return res
        }

        for i in 0..<row {
            for j in 0..<col where board[i][j] == word.first {
                if dfs(i, j, 0) {
                    return true
                }
            }
        }
        return false
    }
}