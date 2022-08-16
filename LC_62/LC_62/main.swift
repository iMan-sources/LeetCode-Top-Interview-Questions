//
//  main.swift
//  LC_62
//
//  Created by AnhLe on 21/02/2022.
//

import Foundation
var dp = [[Int]](repeating: Array(repeating: -1, count: 101), count: 101)
func Try(x: Int, y: Int, m: Int, n: Int) -> Int{
    if x >= n || y >= m {
        return 0 
    }
    if x == n - 1 && y == m - 1{
        return 1
    }
    if dp[x][y] != -1 {
        return dp[x][y]
    }
    else{
        dp[x][y] = Try(x: x+1, y: y, m: m, n: n) + Try(x: x, y: y+1, m: m, n: n)
    }
    return dp[x][y]
}

func uniquePaths(_ m: Int, _ n: Int) -> Int {
    dp = [[Int]](repeating: Array(repeating: -1, count: 101), count: 101)
    return Try(x: 0, y: 0, m: m, n: n)
}


print(uniquePaths(23, 12))

