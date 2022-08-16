//
//  main.swift
//  LC_75
//
//  Created by AnhLe on 25/02/2022.
//

import Foundation

func sortColors(_ nums: inout [Int]) {
    var freq = [Int](repeating: 0, count: 4), index = 0
    for i in 0..<nums.count {
        freq[nums[i]] += 1
    }
    
    for i in 0..<freq.count {
        for _ in 0..<freq[i] {
            nums[index] = i
            index += 1
        }
    }
}

var nums = [2,0,1]
sortColors(&nums)

