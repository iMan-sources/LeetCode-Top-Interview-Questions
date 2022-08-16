//
//  main.swift
//  LC_6
//
//  Created by AnhLe on 15/01/2022.
//

import Foundation

func convert(_ s: String, _ numRows: Int) -> String {
    if numRows == 1 {
        return s
    }
    var res = ""
    let char = Array(s)
    for i in 0..<numRows {
        
        let increment = (numRows - 1) * 2
        for j in stride(from: i, to: s.count, by: increment) {
            res.append(char[j])
            if j + increment - 2 * i  < char.count && i > 0 && i < numRows - 1 {
                res.append(char[j+increment - 2 * i])
            }
        }
    }
    return res
}
print(1)
print(convert("AB", 1))

