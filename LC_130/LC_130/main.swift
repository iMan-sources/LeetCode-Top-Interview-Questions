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
 
 struct Position {
    let x: Int
    let y: Int
 }
 
 func isValid(_ board: inout [[Character]], x: Int,y: Int, col: Int, row: Int) -> Bool{
    if !(board[x][y] == "O" && (x < row - 1 && x > 0) && (y < col - 1 && y > 0)) {
        return false
    }
    for i in 0..<4 {
        let x = x + xPos[i], y = y + yPos[i]
        if !((x < row - 1 && x > 0) && (y < col - 1 && y > 0)) && board[x][y] == "O" {
            return false
        }
    }
    return true
 }
 
 func surrounded4DirectionByX(_ board: inout [[Character]], x: Int, y: Int) -> Bool{
    for i in 0..<4 {
        let x = x + xPos[i], y = y + yPos[i]
        if board[x][y] != "X" {
            return false
        }
    }
    return true
 }
 
 func solve(_ board: inout [[Character]]) {
    let row = board.count, col = board[0].count

    var queue = Queue<Position>(), visited = [[Bool]](repeating: Array(repeating: false, count: col), count: row)
    var array = [Position]()
    var result = [["X","O","X","O","X","O","O","O","X","O"],["X","O","O","X","X","X","O","O","O","X"],["O","O","O","O","O","O","O","O","X","X"],["O","O","O","O","O","O","X","O","O","X"],["O","O","X","X","O","X","X","O","O","O"],["X","O","O","X","X","X","X","X","X","O"],["X","O","X","X","X","X","X","O","X","O"],["X","X","O","X","X","X","X","O","O","X"],["O","O","O","O","X","X","X","O","X","O"],["X","X","O","X","X","X","X","O","O","O"]]
    for i in 0..<row {
        print(result[i])
    }
    print("-----------------------")
    for i in 0..<row {
        for j in 0..<col {
            if isValid(&board, x: i, y: j, col: col, row: row) {
                queue.enqueue(Position(x: i, y: j))
                board[i][j] = "#"
                visited[i][j] = true
                while queue.head != nil {
                    let position = queue.dequeue()
                    array.append(position!)
                    for pos in 0..<4 {
                        let x = position!.x + xPos[pos], y = position!.y + yPos[pos]
                        if isValid(&board, x: x, y: y, col: col, row: row) && !visited[x][y] {
                            board[x][y] = "#"
                            queue.enqueue(Position(x: x, y: y))
                        }
                    }
                }

            }
        }
    }
    for i in array {
        if !surrounded4DirectionByX(&board, x: i.x, y: i.y) {
            board[i.x][i.y] = "O"
        }else{
            board[i.x][i.y] = "X"
        }
    }
    for i in 0..<row {
        print(board[i])
    }
 }
 
 var board: [[Character]] = [["X","O","X","O","X","O","O","O","X","O"],
                             ["X","O","O","X","X","X","O","O","O","X"],
                             ["O","O","O","O","O","O","O","O","X","X"],
                             ["O","O","O","O","O","O","X","O","O","X"],
                             ["O","O","X","X","O","X","X","O","O","O"],
                             ["X","O","O","X","X","X","O","X","X","O"],
                             ["X","O","X","O","O","X","X","O","X","O"],
                             ["X","X","O","X","X","O","X","O","O","X"],
                             ["O","O","O","O","X","O","X","O","X","O"],
                             ["X","X","O","X","X","X","X","O","O","O"]]
 solve(&board)



 
