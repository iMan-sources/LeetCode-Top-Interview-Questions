//
//  main.swift
//  LC_179
//
//  Created by AnhLe on 11/04/2022.
//

import Foundation

func largestNumber(_ nums: [Int]) -> String {
    var str = nums.map({String($0)}), result = ""
    for i in 0..<str.count-1 {
        for j in i+1..<str.count {
            let num_1 = str[i] + str[j]
            let num_2 = str[j] + str[i]
            if num_1 < num_2 {
                str.swapAt(i, j)
            }
        }
    }
    var index = -1
    for i in 0..<str.count {
        if str[i] != "0" {
            index = i
            break
        }
    }
    if index == -1 {
        return "0"
    }
    let res = str[index..<str.count]
    _ = res.map({result.append($0)})
    return result

}

print(largestNumber([0,0,0,0]))
print(largestNumber([1,2,3,4,5,6,7,8,9,0]))

