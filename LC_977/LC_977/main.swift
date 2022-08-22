//
//  main.swift
//  LC_977
//
//  Created by AnhVT12.REC on 8/22/22.
//

import Foundation

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var nums = nums
        var left = 0, right = nums.count - 1
        while left <= right{
            if left == right{
                nums[left] = abs(nums[left]) * abs(nums[left])
                break
            }

            nums[left] = abs(nums[left]) * abs(nums[left])
            nums[right] = abs(nums[right]) * abs(nums[right])
            left += 1
            right -= 1
        }
        nums = nums.sorted()
        return nums
    }
}

var solution = Solution()

print(solution.sortedSquares([-7,-3,2,3,11]))
print(solution.sortedSquares([-7,-3,3,11]))

