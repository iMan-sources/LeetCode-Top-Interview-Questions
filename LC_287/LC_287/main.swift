//
//  main.swift
//  LC_287
//
//  Created by AnhLe on 17/05/2022.
//

import Foundation

func findDuplicate(_ nums: [Int]) -> Int {
    var set = Set<Int>()
    for i in 0..<nums.count {
        if set.contains(nums[i]) {
            return nums[i]
        }
        set.insert(nums[i])
    }
    return 0
}

print(findDuplicate([1,3,4,2,2]))
print(findDuplicate([3,1,3,4,2]))
