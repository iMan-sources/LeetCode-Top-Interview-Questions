//
//  main.swift
//  LC_15
//
//  Created by AnhLe on 23/01/2022.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]]()
    if nums.count < 3 {
        return res
    }
    var mat =  Set<[Int]>()
    var array = nums
    array.sort()
    for i in 0..<nums.count {
        var st = i + 1
        var en = nums.count - 1
        while st < en {
            let sum = array[i] + array[st] + array[en]
            if sum == 0 {
                mat.insert([array[i], array[st], array[en]])
                st += 1
                en -= 1
            }
            else if sum > 0 {
                en -= 1
            }
            else if sum < 0 {
                st += 1
            }
        }
    }
    
    for i in mat {
        res.append(i)
    }
    return res
}

print(threeSum([-1,0,1,2,-1,-4]))
