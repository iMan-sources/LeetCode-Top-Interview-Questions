//
//  main.swift
//  LC_69
//
//  Created by AnhLe on 22/02/2022.
//

import Foundation

func mySqrt(_ x: Int) -> Int {
    if x == 0 {
        return 0 
    }else if x == 1{
        return 1
    }
    let len = x / 2
    var res = 1
    for i in 1...len+1 {
        let mul = i * i
        if mul == x{
            res = i
            break
        }
        if mul > x {
            res = i-1
            break
        }
    }
    return res
}

print(mySqrt(2))
print(mySqrt(1))
print(mySqrt(5))
print(mySqrt(3))
print(mySqrt(2))
print(mySqrt(2147483647))
