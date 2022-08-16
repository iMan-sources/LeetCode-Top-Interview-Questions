//
//  main.swift
//  LC_4
//
//  Created by AnhLe on 13/01/2022.
//

import Foundation

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var array = [Int]()
    var res = 0.0
    array.append(contentsOf: nums1)
    array.append(contentsOf: nums2)
    array.sort()
    let len = array.count
    if len % 2 == 0 {
        res = Double((array[len/2] + array[len/2 - 1])) / Double(2)
    }
    else{
        res = Double((array[len/2]))
    }
    
    return res
}
var nums1 = [1,2]
var nums2 = [3]
print(findMedianSortedArrays(nums1, nums2))


