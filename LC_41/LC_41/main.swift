//
//  main.swift
//  LC_41
//
//  Created by AnhLe on 09/02/2022.
//

import Foundation

func firstMissingPositive(_ nums: [Int]) -> Int {
    let ordered = nums.sorted()
    var set = Set<Int>()
    for i in 0..<ordered.count {
        if ordered[i] > 0 {
            set.insert(ordered[i])
        }
    }
    for i in 0..<set.count {
        if !set.contains(i+1) {
            return i + 1
        }
    }
    return set.count + 1
}

print(firstMissingPositive([1,2,0]))
print(firstMissingPositive([3,4,-1,1]))
print(firstMissingPositive([7,8,9,11,12]))
