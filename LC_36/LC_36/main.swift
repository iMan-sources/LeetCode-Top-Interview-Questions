//
//  main.swift
//  LC_36
//
//  Created by AnhLe on 07/02/2022.
//

import Foundation

func checkRow(_ board: [[Character]])->Bool{
    var appear = [Int](repeating: 0, count: 10)
    for row in 0..<board.count {
        for i in 0..<board[row].count{
            let tmp = board[row][i]
            if tmp != "." {
                appear[Int(String(tmp))!] += 1
                if appear[Int(String(tmp))!] > 1 {
                    return false
                }
            }
        }
        appear = [Int](repeating: 0, count: 10)
    }
    return true
}
func checkCol(_ board: [[Character]])->Bool{
    var appear = [Int](repeating: 0, count: 10)
    for col in 0..<board.count {
        for i in 0..<board[col].count {
            let tmp = board[i][col]
            if tmp != "." {
                appear[Int(String(tmp))!] += 1
                if appear[Int(String(tmp))!] > 1 {
                    return false
                }
            }
        }
        appear = [Int](repeating: 0, count: 10)
    }
    return true
}

func checkMat(_ board: [[Character]]) -> Bool{
    var mat = [[Character]](repeating: [], count: 9), index = 0,prevIndex = index
    for row in 0..<board.count {
        if row % 3 == 0 && row != 0 {
            index += 1
            prevIndex = index
        }else{
            index = prevIndex
        }
        for i in 0..<board[row].count{
            if i % 3 == 0 && i != 0 {
                index += 1
                mat[index].append(board[row][i])
            }else{
                mat[index].append(board[row][i])
            }
        }
    }
    return checkRow(mat)
}
func isValidSudoku(_ board: [[Character]]) -> Bool {
    let row = checkRow(board)
    let col = checkCol(board)
    let mat = checkMat(board)
    if row && col && mat {
        return true
    }
    return false
}

let board: [[Character]] = 
    [["8","3",".",".","7",".",".",".","."]
    ,["6",".",".","1","9","5",".",".","."]
    ,[".","9","8",".",".",".",".","6","."]
    ,["8",".",".",".","6",".",".",".","3"]
    ,["4",".",".","8",".","3",".",".","1"]
    ,["7",".",".",".","2",".",".",".","6"]
    ,[".","6",".",".",".",".","2","8","."]
    ,[".",".",".","4","1","9",".",".","5"]
    ,[".",".",".",".","8",".",".","7","9"]]

print(isValidSudoku(board))

