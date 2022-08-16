//
//  main.swift
//  LC_198
//
//  Created by AnhLe on 14/04/2022.
//

import Foundation

func rob(_ nums: [Int]) -> Int {
    var total = nums
    if nums.count <= 2 {
        return total.max()!
    }
    for i in 2..<nums.count {
        let maxInRange = total[0..<i-1].max()!
        total[i] += maxInRange
    }
    return total.max()!
}

print(rob([2,7,9,3,1]))
