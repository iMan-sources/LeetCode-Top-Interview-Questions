//
//  main.swift
//  LC_200
//
//  Created by AnhLe on 15/04/2022.
//

import Foundation

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
var xPos = [0,0,-1,1]
var yPos = [-1,1,0,0]
var visited:  [[Bool]]!
var row: Int!, col: Int!
func isValid(x: Int, y: Int) -> Bool{
    if (x >= 0 && x < row) && (y >= 0 && y < col) && !visited[x][y] {
        return true
    }
    return false
}
struct Position {
    let x: Int
    let y: Int
}

func numIslands(_ grid: [[Character]]) -> Int {
    row = grid.count
    col = grid[0].count
    var grid = grid
    visited = Array(repeating: Array(repeating: false, count: col), count: row)
    var queue = Queue<Position>(), count = 0
    for i in 0..<row {
        for j in 0..<col {
            if grid[i][j] == "1"{
                queue.enqueue(Position(x: i, y: j))
                count += 1
                while queue.head != nil {
                    let peak = queue.dequeue()!
                    visited[peak.x][peak.y] = true
                    for i in 0..<xPos.count {
                        let newX = peak.x + xPos[i]
                        let newY = peak.y + yPos[i]
                        if isValid(x: newX, y: newY) && grid[newX][newY] == "1" {
                            grid[newX][newY] = "0"
                            queue.enqueue(Position(x: newX, y: newY))
                        }
                    }
                }
            }
        }
    }
    return count
}


let grid: [[Character]] = [
    ["1","1","0","0","0"],
    ["1","1","0","0","0"],
    ["0","0","1","0","0"],
    ["0","0","0","1","1"]
  ]

print("DEBUG: \(numIslands(grid))")

