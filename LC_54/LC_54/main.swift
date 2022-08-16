//
//  main.swift
//  LC_54
//
//  Created by AnhLe on 17/02/2022.
//

import Foundation
func checkedAll(_ mat: [[Bool]]) ->Bool{
    for i in 0..<mat.count {
        for j in 0..<mat[i].count{
            if mat[i][j] == false {
                return false
            }
        }
    }
    return true
}
func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    let m = matrix.count, n = matrix[0].count
    var res = [Int](), checked = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m),  i = 0, j = 0
    res.append(matrix[i][j])
    checked[i][j] = true
    while !checkedAll(checked) {
        //left
        while j >= 0 && j + 1 < n {
            if !checked[i][j+1] {
                res.append(matrix[i][j+1])
                checked[i][j+1] = true
                j += 1
            }
            else{
                break
            }
            
            
        }
        //down
        while i >= 0 && i + 1 < m {
            if !checked[i+1][j] {
                res.append(matrix[i+1][j])
                checked[i+1][j] = true
                i += 1
            }
            else{
                break
            }
            
        }
        //right
        while j-1 >= 0 && j < n {
            if !checked[i][j-1] {
                res.append(matrix[i][j-1])
                checked[i][j-1] = true
                j -= 1
            }
            else{
                break
            }
            
        }
        //up
        while i-1 >= 0 && i < m {
            if !checked[i-1][j] {
                res.append(matrix[i-1][j])
                checked[i-1][j] = true
                i -= 1
            }
            else{
                break
            }
            
        }
        
    }

    return res
}
print(spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]]))

