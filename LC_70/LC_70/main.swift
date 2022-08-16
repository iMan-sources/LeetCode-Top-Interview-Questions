//
//  main.swift
//  LC_70
//
//  Created by AnhLe on 23/02/2022.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
    var dp = [Int](repeating: 0, count: n+1)
    if n == 1 {
        return 1
    }
    dp[1] = 1
    dp[0] = 1
    for i in 2...n {
        for j in 1...min(i, 2) {
            dp[i] += dp[i - j]
        }
    }
    
    return dp[n]
}

print(climbStairs(2))
