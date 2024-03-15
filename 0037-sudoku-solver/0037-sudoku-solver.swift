class Solution {

    func solveSudoku(_ board: inout [[Character]]) {
        solve(&board)
    }

    func solve(_ board: inout [[Character]]) -> Bool {
        
        for i in 0..<board.count {
            for j in 0..<board[0].count {
                if board[i][j] == "." {
                    for k in 1...9 {
                        let char = Character("\(k)")
                        if isValid(i,j,board,char) {
                            board[i][j] = char

                            if solve(&board) {
                                return true
                            } else {
                                board[i][j] = "."
                            }
                        } 
                    }
                    return false
                }
            }
        }

        return true
    }

    func isValid(_ row: Int,_ col: Int,_ board: [[Character]],_ char: Character) -> Bool {

        for i in 0..<9 {
            if board[row][i] == char {
                return false
            } else if board[i][col] == char {
                return false
            } else if board[3*(row/3) + (i/3)][3*(col/3) + (i%3)] == char {
                return false
            }
        }
        return true
    }
}