//
//  main.swift
//  LC_73
//
//  Created by AnhLe on 24/02/2022.
//

import Foundation

func setZeroes(_ matrix: inout [[Int]]) {
    let row = matrix.count, col = matrix[0].count
    var  checkedMat = [[Bool]](repeating: Array(repeating: false, count: col), count: row)
    
    for i in 0..<row {
        for j in 0..<col {
            if matrix[i][j] == 0 && !checkedMat[i][j] {
                checkedMat[i][j] = true
                for k in 0..<col {
                    if matrix[i][k] == 0 {
                        continue
                    }
                    matrix[i][k] = 0
                    checkedMat[i][k] = true
                }
                for k in 0..<row {
                    if matrix[k][j] == 0 {
                        continue
                    }
                    matrix[k][j] = 0 
                    checkedMat[k][j] = true
                }
            }
        }
    }
}
var matrix = [[1,1,1],[1,0,1],[1,1,1]]
setZeroes(&matrix)


