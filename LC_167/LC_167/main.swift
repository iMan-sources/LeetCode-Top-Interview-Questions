//
//  main.swift
//  LC_167
//
//  Created by AnhVT12.REC on 8/23/22.
//

import Foundation

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var lhs = 0, rhs = numbers.count - 1
    while lhs < rhs{
        let sum =  numbers[lhs] + numbers[rhs]
        if sum == target{
            return [lhs + 1, rhs + 1]
        }
        else if sum < target{
            lhs += 1
        }else{
            rhs -= 1
        }
    }
    return []
}

print(twoSum([-1,0], -1))

