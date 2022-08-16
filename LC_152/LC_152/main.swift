//
//  main.swift
//  LC_152
//
//  Created by AnhLe on 04/04/2022.
//

import Foundation

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        
        var dpMax = nums, dpMin = nums, result = nums[0]
        dpMax[0] = nums[0]
        dpMin[0] = nums[0]
        for i in 1..<nums.count {
            dpMax[i] = max(nums[i], nums[i] * dpMax[i-1], nums[i] * dpMin[i-1])
            dpMin[i] = min(nums[i], nums[i] * dpMin[i-1], nums[i] * dpMax[i-1])
            result = max(result, dpMax[i])
        }
        return result
        
    }
}

var solution = Solution()
print(solution.maxProduct([-2]))
print(solution.maxProduct([2,3,-2,4]))
print(solution.maxProduct([2,3,-2,2,3,4]))
print(solution.maxProduct([0,2]))
print(solution.maxProduct([-2,0,-1]))
print(solution.maxProduct([-2,3,-4]))
print(solution.maxProduct([-1,-2,-9,-6]))

