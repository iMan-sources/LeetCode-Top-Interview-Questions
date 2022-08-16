//
//  main.swift
//  LC_50
//
//  Created by AnhLe on 16/02/2022.
//

import Foundation


func Try(_ x: Double, _ n: Int) ->Double{
    if n == 0 {
        return 1
    }
    let xDiv2 = Try(x, n/2)
    var res = xDiv2 * xDiv2
    if n % 2 == 1 {
        res = res * x
    }
    return res
}

func myPow(_ x: Double, _ n: Int) -> Double {
    var x = x
    if n < 0 {
        x = 1 / x
        if n == Int32.min {
            if x == 1 || x == -1 {
                return 1
            }
            else{
                return 0
            }
        }
        
    }
    return Try(x, abs(n))
}

print(myPow(2.0, 2))

