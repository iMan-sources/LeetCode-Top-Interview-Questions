//
//  main.swift
//  LC_155
//
//  Created by AnhLe on 05/04/2022.
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

class MinStack {
    var array: [Int]!
    init() {
        array = []
    }
    
    func push(_ val: Int) {
        array.append(val)
    }
    
    func pop() {
        _ = array.popLast()
    }
    
    func top() -> Int {
        return array.last!
    }
    
    func getMin() -> Int {
        return array.min()!
    }
}
