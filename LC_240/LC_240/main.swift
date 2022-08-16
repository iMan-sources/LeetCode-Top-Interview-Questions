//
//  main.swift
//  LC_240
//
//  Created by AnhLe on 29/06/2022.
//

import Foundation

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    var row = matrix.count, col = matrix[0].count, res = false, target_row = -1, target_col = -1
    for i in 0..<row {
        for j in 0..<col {
            if matrix[i][j] == target {
                target_row = i
                target_col = j
                res = true
                break
            }
        }
    }
    
    if res {
        //test column
        for i in 1..<row {
            if matrix[i][target_col] < matrix[i-1][target_col] {
                res = false
                break
            }
        }
        
        for i in 1..<col {
            if matrix[target_row][i] < matrix[target_row][i-1] {
                res = false
                break
            }
        }
        
    }
    return res
    
}

searchMatrix([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 5)

searchMatrix([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 20)

