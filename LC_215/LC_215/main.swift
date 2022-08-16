//
//  main.swift
//  LC_215
//
//  Created by AnhLe on 24/04/2022.
//

import Foundation

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    if nums.count == 1 {
        return nums[0]
    }
    var sorted = nums.sorted()
    sorted = sorted.reversed()
    return sorted[k-1]
}

print("DEBUG: \(findKthLargest([3,2,1,5,6,4], 2))")
print("DEBUG: \(findKthLargest([3,2,3,1,2,4,5,5,6], 4))")

