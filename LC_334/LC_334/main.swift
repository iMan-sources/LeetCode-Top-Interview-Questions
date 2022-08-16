//
//  main.swift
//  LC_334
//
//  Created by AnhLe on 16/07/2022.
//

import Foundation

func increasingTriplet(_ nums: [Int]) -> Bool {
    if nums.count < 3 {
        return false
    }
    var min_1 = Int(pow(Double(2), Double(31))) - 1;
    var min_2 = Int(pow(Double(2), Double(31))) - 1;
    for i in 0..<nums.count {
        if nums[i] <= min_1 {
            min_1 = nums[i]
        }else if nums[i] <= min_2{
            min_2 = nums[i]
        }else{
            return true
        }
    }
    return false
 }

print(increasingTriplet(
        [1,2,1,3]))
print(increasingTriplet([1,2,3,4,5]))
print(increasingTriplet([2,1,5,0,4,6]))

