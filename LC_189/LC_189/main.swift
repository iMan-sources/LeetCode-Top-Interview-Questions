//
//  main.swift
//  LC_189
//
//  Created by AnhLe on 12/04/2022.
//

import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
    for _ in 0..<k {
        nums.insert(nums[nums.count-1], at: 0)
        nums.remove(at: nums.count-1)
    }
}
var arr = [-1,-100,3,99]
print(rotate(&arr, 2))

