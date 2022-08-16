//
//  main.swift
//  LC_34
//
//  Created by AnhLe on 06/02/2022.
//

import Foundation



func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var st = 0, en = nums.count - 1, res = -1
    var result = [Int]()
    while st <= en {
        let mid = st + (en-st)/2
        let midValue = nums[mid]
        if midValue == target {
            res = mid
            break
        }
        if midValue < target {
            st = mid + 1
        }
        else{
            en = mid - 1
        }
    }
    if res == -1 {
        return [-1, -1]
    }
    var l = res - 1, r = res + 1
    result.append(res)
    print(res)
    while l >= 0 {
        if nums[l] != target  {
            break
        }
        if nums[l] == target {
            result.append(l)
        }
        l -= 1
        
    }
    while r < nums.count {
        if nums[r] != target{
            break
        }
        if nums[r] == target {
            result.append(r)
        }
        r += 1
    }
    return [result.min()!, result.max()!]
}

print(searchRange([2,2], 2))

