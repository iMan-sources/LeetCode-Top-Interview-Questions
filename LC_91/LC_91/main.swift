//
//  main.swift
//  LC_91
//
//  Created by AnhLe on 03/03/2022.
//

import Foundation


func numDecodings(_ s: String) -> Int {
    var dp = [Int](repeating: 0, count: s.count+1)
    let chars = Array(s)
    dp[0] = 1
    if chars[0] == "0" {
        dp[1] = 0
    }else{
        dp[1] = 1
    }
    if s.count >= 2 {
        for i in 2...chars.count {
            var oneDigit = ""
            for j in i-1..<i {
                oneDigit.append(chars[j])
            }
            var twoDigits = ""
            for j in i-2..<i {
                twoDigits.append(chars[j])
            }
            if Int(oneDigit)! >= 1 {
                dp[i] += dp[i-1]
            }
            if Int(twoDigits)! >= 10 && Int(twoDigits)! <= 26 {
                dp[i] += dp[i-2]
            }
        }
    }
    
    return dp[s.count]
}

print(numDecodings("063"))

