//
//  main.swift
//  LC_139
//
//  Created by AnhLe on 23/03/2022.
//

import Foundation

class Solution {

    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var dp = [Bool](repeating: false, count: s.count+1)
        dp[s.count] = true
        let chars = Array(s)
        for i in (0..<chars.count).reversed() {
            for word in wordDict {
                if i + word.count <= s.count && String(chars[i..<i + word.count]) == word {
                    dp[i] = dp[i + word.count]
                }
                if dp[i] == true{
                    break
                }
            }
        }
        return dp[0]
    }
}

var solution = Solution()


print(solution.wordBreak("leetcode", ["leet","code"]))

