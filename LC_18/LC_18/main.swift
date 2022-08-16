//
//  main.swift
//  LC_18
//
//  Created by AnhLe on 12/06/2022.
//

import Foundation
func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    var sortedArray = nums
    sortedArray = sortedArray.sorted()
    var set = Set<[Int]>()
    for i in 0..<nums.count {
        let temp = sortedArray.remove(at: i)
        for j in 0..<sortedArray.count {
            var left = j + 1
            var right = sortedArray.count - 1
            while left < right {
                let sum = sortedArray[j] + sortedArray[left] + sortedArray[right]
                if sum + temp == target {
                    let ar = [sortedArray[j],sortedArray[left],sortedArray[right], temp]
                    set.insert(ar.sorted())
                    left += 1
                    right -= 1
                }else if sum < target - temp{
                    left += 1
                }else if sum  > target - temp {
                    right -= 1
                }
            }
        }
        sortedArray.append(temp)
        sortedArray = sortedArray.sorted()
    }
    var res = [[Int]]()
    for i in set {
        res.append(i)
    }
    return res
}

print("DEBUG: \(fourSum([-4,-3,-2,-1,0,0,1,2,3,4], 0))")

