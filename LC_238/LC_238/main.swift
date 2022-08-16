//
//  main.swift
//  LC_238
//
//  Created by AnhLe on 28/06/2022.
//

import Foundation

func product(array: [Int]) -> Int{
    var totalProduct = 1
    for i in 0..<array.count{
        totalProduct *= array[i]
    }
    return totalProduct
}
func productExceptSelf(_ nums: [Int]) -> [Int] {
    var res = [Int]()
    var totalProduct = 1
    _ = nums.map({totalProduct *= $0})
    for i in 0..<nums.count {
        if nums[i] == 0 {
            let lhs = nums[0..<i]
            let rhs = nums[i+1..<nums.count]
            let prd = product(array: Array(lhs)) * product(array: Array(rhs))
            res.append(prd)
        }
        else{
            res.append(totalProduct / nums[i])
        }
    }

    return res
}

print(productExceptSelf([1,2,3,4]))
print(productExceptSelf([-1,1,0,-3,3]))

