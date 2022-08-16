//
//  main.swift
//  LC_322
//
//  Created by AnhLe on 07/07/2022.
//

import Foundation

func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    if amount == 0 {
        return 0
    }
    let length = Int(pow(Double(10), Double(4)))
    var dp = [Int](repeating: 2147483647, count: length + 1)
    dp[0] = 0
    for i in 1...amount {
        for j in 0..<coins.count {
            let remain = i - coins[j]
            if remain >= 0 {
                dp[i] = min(dp[i], 1 + dp[remain])
            }
        }
    }
    if dp[amount] == Int(INT8_MAX) {
        return -1
    }
    return dp[amount]
}

print(coinChange([1], 10000))

