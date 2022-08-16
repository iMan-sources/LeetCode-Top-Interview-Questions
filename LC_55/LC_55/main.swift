//
//  main.swift
//  LC_55
//
//  Created by AnhLe on 18/02/2022.
//

import Foundation

func canJump(_ nums: [Int]) -> Bool {
    var reachable = 0
    for i in 0..<nums.count {
        if reachable < i {
            return false
        }
        reachable = max(reachable,i + nums[i])
        print(reachable)
    }
    return true
}
print(canJump([3,7,1,1,4]))


