//
//  main.swift
//  LC_300
//
//  Created by AnhLe on 13/07/2022.
//

import Foundation

func lengthOfLIS(_ nums: [Int]) -> Int {
    var dp = [Int](repeating: 1, count: nums.count+1);
    if nums.count == 1 {
        return 1
    }
    for i in 0..<nums.count {
        for j in 0...i {
            if nums[i] > nums[j] {
                dp[i] = max(dp[i], dp[j]+1);
            }
        }
    }
    return dp.max()!;
}
print(lengthOfLIS([1,3,6,7,9,4,10,5,6]));
