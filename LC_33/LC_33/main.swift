//
//  main.swift
//  LC_33
//
//  Created by AnhLe on 28/01/2022.
//

import Foundation

print("Hello, World!")


func search(_ nums: [Int], _ target: Int) -> Int {
    let len = nums.count
    if len == 0 {
        return -1
    }
    var low = 0, hight = len - 1, first = nums[0]
    //check target in left side
    let target_big = target >= first ? true : false
    while low <= hight {
        let mid = low + (hight - low)/2
        let midValue = nums[mid]
        if midValue == target {
            return mid
        }
        // left side is existed
        let am_big = midValue >= first ? true : false
        
        //check if target in left side
        if am_big == target_big {
            if midValue < target {
                low = mid + 1
            }
            else{ 
                hight = mid - 1
            }
        }
        
        else{
            // am big and target is small
            // move to the right
            if am_big {
                low = mid + 1
            }
            // 
            else{
                hight = mid - 1
            }
        }
    }
    return -1
}
