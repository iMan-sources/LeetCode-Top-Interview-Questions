//
//  main.swift
//  LC_283
//
//  Created by AnhVT12.REC on 8/22/22.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    let length = nums.count
    var idx = 0
    for i in 0..<length{
        if nums[i] != 0{
            nums[idx] = nums[i]
            idx += 1
        }
    }
    for i in idx..<length{
        nums[i] = 0
    }
}
var nums = [0,1,0,3,12]
moveZeroes(&nums)

