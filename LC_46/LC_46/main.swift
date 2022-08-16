//
//  main.swift
//  LC_46
//
//  Created by AnhLe on 11/02/2022.
//

import Foundation

var checked = [Bool](repeating: false, count: 7)
var permutation = [Int](repeating: 0, count: 7)
var result = [[Int]]()
func applyPosition(n: Int, existed: [Int])-> [Int]{
    var arr = [Int]()
    for i in 1...n {
        arr.append(existed[permutation[i] - 1])
    }
    return arr
}
func Try(i: Int, n: Int, existed: [Int]){
    for j in 1...n {
        if !checked[j] {
            permutation[i] = j
            checked[j] = true
            if(i == n){
                result.append(applyPosition(n: n, existed: existed))
            }
            else{
                Try(i: i+1, n: n, existed: existed)
            }
            checked[j] = false
        }
    }
}

func permute(_ nums: [Int]) -> [[Int]] {
    checked = [Bool](repeating: false, count: 7)
    permutation = [Int](repeating: 0, count: 7)
    result.removeAll()
    Try(i: 1, n: nums.count, existed: nums)
    return result
}

print(permute([6,3,2,7,4,-1]))

