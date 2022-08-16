//
//  main.swift
//  LC_454
//
//  Created by AnhVT12.REC on 8/16/22.
//

import Foundation
// step 1: find sum appeared in nums1 & nums2, if sum_1 existed count += 1
// step 2: find sum appeared in nums3 & nums4, check if dict[0-sum_2] existed -> sum = 0 -> count += appearance of dict[0-sum]
//ex: num1 & num2:  dict[2] = 2
//num3 & num4: sum: -2, -2,...
//i = 0 -> count = 0 -> count += dict[2] = 2
//i = 1 -> count = 2 -> count  += dict[2] = 4
func fourSumCount(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int], _ nums4: [Int]) -> Int {
    let lim = nums1.count
    var count = 0
    var dict = [Int: Int]()
    for i in 0..<lim {
        for j in 0..<lim{
            let sum = nums1[i] + nums2[j]
            if dict[sum] != nil {
                dict[sum]! += 1
            }else{
                dict[sum] = 1
            }
            
        }
    }
    
    for l in 0..<lim{
        for k in 0..<lim{
            let sum = nums3[l] + nums4[k]
            // check if opposite sum is exist -> sum = 0
            if dict[0 - sum] != nil{
                count += dict[0-sum]!
            }
        }
    }
    
    return count
}


