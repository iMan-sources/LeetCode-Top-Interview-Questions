//
//  main.swift
//  LC_189_ver2
//
//  Created by AnhVT12.REC on 8/22/22.
//

import Foundation

func rotate(_ nums: inout [Int], _ k: Int) {
    if nums.count < 2 {
        return
    }
    var prev = 0, nxt = 1, saved = nums[prev]
    for _ in 1..<nums.count - 1{
        saved = nums[nxt]
        print("saved: ", saved)
        nums[nxt] = saved
        
        prev += 1
        nxt += 1
        
    }
    print(nums)
 }
var nums = [1,2,3,4,5,6,7], k = 3
rotate(&nums, k)

