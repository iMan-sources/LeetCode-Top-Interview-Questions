//
//  main.swift
//  LC_264
//
//  Created by AnhLe on 03/07/2022.
//

import Foundation

func nthUglyNumber(_ n: Int) -> Int {
    
    var dp = [Int](), divide_2 = 0, divide_3 = 0, divide_5 = 0
    dp.append(1)
    for i in 1..<n {
        dp.append(min(dp[divide_2] * 2, dp[divide_3] * 3, dp[divide_5] * 5))
        if dp[i] == dp[divide_2] * 2 {
            divide_2 += 1
        }
        if dp[i] == dp[divide_3] * 3 {
            divide_3 += 1
        }
        if dp[i] == dp[divide_5] * 5{
            divide_5 += 1
        }
    }
    return dp[n-1]
}

print(nthUglyNumber(10))
