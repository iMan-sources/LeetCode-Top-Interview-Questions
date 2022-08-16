//
//  main.swift
//  LC_324
//
//  Created by AnhLe on 18/07/2022.
//

import Foundation
//assign number in result array by descending in sortedArray in odd
func wiggleSort(_ nums: inout [Int]) {
    var sortedArray = nums.sorted(), result = [Int](repeating: -1, count: nums.count)
    var en = nums.count - 1,i = 1
    while i < nums.count {
        result[i] = sortedArray[en]
        i += 2
        en -= 1
    }
    i = 0
    while i < nums.count {
        result[i] = sortedArray[en]
        en-=1
        i += 2
    }
    nums = result
    
}
//[1,3,2,2,3,1]
//[1,1,2,1,2,2,1]
//[4,5,5,6]
var nums =
    [4,5,5,6]

wiggleSort(&nums)
