//
//  main.swift
//  LC_118
//
//  Created by AnhLe on 15/03/2022.
//

import Foundation

func generate(_ numRows: Int) -> [[Int]] {
    var mat  = [[Int]]()
    mat.append([1])
    if numRows > 1 {
        mat.append([1,1])
        
        for row in 2..<numRows  {
            var array = [Int]()
            array.append(1)
            for i in 0..<mat[row-1].count - 1 {
                array.append(mat[row-1][i] + mat[row-1][i+1])
            }
            array.append(1)
            mat.append(array)
        }
    }
    
    return mat
}

print(generate(2))

