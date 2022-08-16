import Foundation
struct Position: Hashable {
    let x: Int
    let y: Int
}
var set = Set<Position>(), res: Bool = true

func DFS(i:Int, j: Int,row: Int, col: Int, count: Int, _ word: [Character], _ board: [[Character]]) -> Bool{
    if count == word.count {
        return true
    }
    if i < 0 || i >= row || j < 0 || j >= col || word[count] != board[i][j] || set.contains(Position(x: i, y: j))  {
        return false
    }
    set.insert(Position(x: i, y: j))
    res = DFS(i: i+1, j: j, row: row, col: col, count: count+1, word, board) || 
        DFS(i: i, j: j+1, row: row, col: col, count: count+1, word, board) || 
        DFS(i: i-1, j: j, row: row, col: col, count: count+1, word, board) || 
        DFS(i: i, j: j-1, row: row, col: col, count: count+1, word, board)
    // if have 2 the same character -> if 1 condition not wright -> remove all positions from this same postion 
    set.remove(Position(x: i, y: j))
    return res
}

func exist(_ board: [[Character]], _ word: String) -> Bool {
    let row = board.count, col = board[0].count
    let word = Array(word)
    set.removeAll()
    for i in 0..<row {
        for j in 0..<col {
            if DFS(i: i, j: j, row: row, col: col, count: 0, word, board) {
                return true
            }
        }
    }
    return false
}
let board: [[Character]] = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
print(exist(board, word))
