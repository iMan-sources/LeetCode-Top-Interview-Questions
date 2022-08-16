//
//  main.swift
//  LC_172
//
//  Created by AnhLe on 10/04/2022.
//

import Foundation
var fact: [Int] = [Int](repeating: 0, count: 10000)
fact[0] = 0
fact[1] = 1


func trailingZeroes(_ n: Int) -> Int {
    var i = 5, res = 0
    while i <= n {
        res += (n / i)
        i *= 5
    }
    return res
}
print(trailingZeroes(0))

