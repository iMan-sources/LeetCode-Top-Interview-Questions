//
//  main.swift
//  LC_11
//
//  Created by AnhLe on 21/01/2022.
//

import Foundation

struct Stack {
    fileprivate var array: [Int] = []
    mutating func push(_ element: Int){
        array.append(element)
    }
    mutating func pop() -> Int? {
        return array.popLast()
    }
    func peek() -> Int?{
        return array.last
    }
}

func maxArea(_ height: [Int]) -> Int {
    var st = 0, en = height.count - 1
    var res = 0
    while st < en {
        res = max(res, min(height[st], height[en]) * (en - st))
        if height[st] < height[en] {
            st+=1
        }
        else{
            en-=1
        }
    }
    
    return res
}

print(1022/10)

