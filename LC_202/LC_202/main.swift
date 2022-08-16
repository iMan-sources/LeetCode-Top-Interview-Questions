//
//  main.swift
//  LC_202
//
//  Created by AnhLe on 15/04/2022.
//

import Foundation

func split(_ n: Int) -> Int{
    var array = [Int](), n = n, result = 0
    if n < 10 {
        return n
    }
    while n > 0 {
        array.append(n % 10)
        
        n /= 10
    }
    _ = array.map({result += Int(pow(Double($0), 2))})
    return split(result)
}

func isHappy(_ n: Int) -> Bool {
    if split(n) == 1 || split(n) == 7 {
        return true
    }
    return false
}

print(isHappy(7))

