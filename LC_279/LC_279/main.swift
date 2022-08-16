//
//  main.swift
//  LC_279
//
//  Created by AnhLe on 02/07/2022.
//

import Foundation

var count = 0

func numSquares(_ n: Int) -> Int {
    var dp: [Int] = [Int](repeating: Int(INT8_MAX), count: n+1)
    dp[0] = 0
    for i in 1...n {
        for j in 1...i {
            let square = j * j
            if i - square < 0 {
                break
            }
            dp[i] = min(dp[i], 1 + dp[i-square])
        }
    }
    return dp[n]
}


