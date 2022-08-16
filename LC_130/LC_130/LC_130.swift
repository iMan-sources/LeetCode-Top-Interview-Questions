class Solution {
    struct Queue<T> {
        private var elements: [T] = []
        
        mutating func enqueue(_ value: T) {
            elements.append(value)
        }
        
        mutating func dequeue() -> T? {
            guard !elements.isEmpty else {
                return nil
            }
            return elements.removeFirst()
        }
        
        var head: T? {
            return elements.first
        }
        
        var tail: T? {
            return elements.last
        }
        
        var size: Int {
            return elements.count
        }
    }
    var xPos = [-1,1,0,0]
    var yPos = [0,0,-1,1]
    
    struct Position: Hashable {
        let x: Int
        let y: Int
    }
    
    func isValid(_ board: inout [[Character]], x: Int,y: Int, col: Int, row: Int) -> Bool{
        if ((x < row && x >= 0) && (y < col && y >= 0) && board[x][y] == "O"){
            return true
        }
        return false
    }
    
    func handle(_ board: inout [[Character]], array: [Position], col: Int, row: Int){
        var checked = true
        for i in array {
            if i.x == row - 1 || i.x == 0 || i.y == 0 || i.y == col - 1 {
                checked = false
                break
            }
        }
        
        if checked{
            _ = array.map( {board[$0.x][$0.y] = "X"})
        }else{
            _ = array.map( {board[$0.x][$0.y] = "O"})
        }
    }
    
    func solve(_ board: inout [[Character]]) {
        let row = board.count, col = board[0].count
        var queue = Queue<Position>(), visited = [[Bool]](repeating: Array(repeating: false, count: col), count: row)
        var array = [Position]()
        for i in 0..<row {
            for j in 0..<col {
                if isValid(&board, x: i, y: j, col: col, row: row){
                    queue.enqueue(Position(x: i, y: j))
                    array.append(Position(x: i, y: j))
                    board[i][j] = "#"
                    visited[i][j] = true
                    while queue.head != nil {
                        let position = queue.dequeue()
                        for pos in 0..<4 {
                            let x = position!.x + xPos[pos], y = position!.y + yPos[pos]
                            if isValid(&board, x: x, y: y, col: col, row: row){
                                board[x][y] = "#"
                                queue.enqueue(Position(x: x, y: y))
                                array.append(Position(x: x, y: y))
                            }
                        }
                    }
                    handle(&board, array: array, col: col, row: row)
                    array.removeAll()
                }
            }
        }
    }
}
