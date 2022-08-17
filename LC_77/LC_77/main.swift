//
//  main.swift
//  LC_77
//
//  Created by AnhLe on 17/08/2022.
//

import Foundation
var result = [[Int]]()
func Try(_ candidates: [Int], _ k: Int, _ i: Int, arr: [Int]){
    var arr = arr
    if arr.count == k{
        result.append(arr)
        return
    }
    if i < candidates.count{
        arr.append(candidates[i])
        Try(candidates, k, i+1, arr: arr)
        arr.removeLast()
        Try(candidates, k, i+1, arr: arr)
    }

    
}
func combine(_ n: Int, _ k: Int) -> [[Int]] {
    var arr = [Int]()
    for i in 1...n{
        arr.append(i)
    }
    
    Try(arr, k, 0, arr: [Int]())
    return result
}

combine(20, 3)
print(result)


