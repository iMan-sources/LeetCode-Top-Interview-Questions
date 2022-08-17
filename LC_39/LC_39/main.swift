//
//  main.swift
//  LC_39
//
//  Created by AnhLe on 17/08/2022.
//

import Foundation
var result = [[Int]]()
func Try(_ candidates: [Int], _ target: Int, _ i: Int, _ array: [Int], _ sum: Int){
    var array = array
    if sum == target{
        print(array)
        result.append(array)
        return
    }
    if sum < target && i < candidates.count{
        //keep pos
        array.append(candidates[i])
        Try(candidates, target, i, array, sum +  candidates[i])
        //skip current position, stay sum
        array.removeLast()
        Try(candidates, target, i+1, array, sum)//next pos
    }

}
func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    Try(candidates, target, 0, [Int](), 0)
    return result
}

combinationSum([2,3,6,7], 7)
