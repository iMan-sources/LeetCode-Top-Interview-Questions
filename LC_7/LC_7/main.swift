//
//  main.swift
//  LC_7
//
//  Created by AnhLe on 17/01/2022.
//

import Foundation

func reverse(_ x: Int) -> Int {
    let nums = String(x), array = Array(nums)
    var str = "", isNeg = false
    if array[0] == "-" {
        isNeg = true
    }
    for i in (0..<array.count).reversed() {
        if array[i] != "-"  {
            str.append(array[i])
        }
    }
    var res = Int(str)!
    if isNeg {
        res *= -1
    }
    if res > 2147483648 || res < -2147483648{
        return 0
    }
        
    return res
}

print(reverse(-1200))

