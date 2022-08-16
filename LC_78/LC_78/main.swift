//
//  main.swift
//  LC_78
//
//  Created by AnhLe on 26/02/2022.
//

import Foundation
var array: [Int]!, mat = [[Int]]()
func executeFromArray(n: Int, nums: [Int]) -> [Int]{
    var res = [Int]()
    for i in 0..<n {
        if array[i] == 1 {
            res.append(nums[i])
        }
    }
    return res
}

func Try(i: Int, n: Int, nums: [Int]){
    for j in 0...1 {
        array[i] = j
        if i == n-1 {
            mat.append(executeFromArray(n: n, nums: nums))
        }else{
            Try(i: i+1, n: n, nums: nums)
        }

    }
}

func subsets(_ nums: [Int]) -> [[Int]] {
    let n = nums.count
    mat.removeAll()
    array = [Int](repeating: 0, count: n)
    Try(i: 0, n: n, nums: nums)
    return mat
}

print(subsets([1,2,3,4,5,6,7,8,9,10]))

