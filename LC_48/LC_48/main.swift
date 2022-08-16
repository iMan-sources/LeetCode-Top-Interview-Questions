//
//  main.swift
//  LC_48
//
//  Created by AnhLe on 12/02/2022.
//

import Foundation

func rotate(_ matrix: inout [[Int]]) {
    var mat = [[Int]](), index = 0
    let len = matrix.count
    while index < len {
        var array = [Int]()
        for i in 0..<matrix.count {
            array.append(matrix[i][index])
        }
        index += 1
        mat.append(array.reversed())
    }
    matrix = mat
}
var mat = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
rotate(&mat)
