//
//  main.swift
//  LC_56
//
//  Created by AnhLe on 20/02/2022.
//

import Foundation

struct Stack {
    fileprivate var array: [[Int]] = []
    mutating func push(_ element: [Int]){
        array.append(element)
    }
    mutating func pop() -> [Int]? {
        return array.popLast()
    }
    func peek() -> [Int]?{
        return array.last
    }
}
func sort(ar_1: [Int], ar_2: [Int]) -> [Int]{
    var res = [Int]()
 
    res.append(contentsOf: ar_1)
    res.append(contentsOf: ar_2)
    res = res.sorted()
    return [res[0], res[res.count-1]]
}

func merge(_ intervals: [[Int]]) -> [[Int]] {
    let interval = intervals.sorted(by: {(n1:[Int], n2:[Int]) -> Bool in return n1[0] <= n2[0]})
    var stack = Stack(), res = [[Int]]()
    stack.push(interval[0])
    for i in 1..<interval.count {
        if let peek = stack.peek() {
            if peek[1] >= interval[i][0] {
                stack.pop()
                stack.push(sort(ar_1: peek, ar_2: interval[i]))
                
            }
            else{
                stack.push(interval[i])
            }
        }
    }
    while stack.peek() != nil {
        if let peek = stack.peek(){
            res.append(peek)
            stack.pop()
        }
        
    }
    return res.reversed()
}

print(merge([[1,3],[2,10],[8,10],[15,18]]))
print(merge([[1,4],[0,1]]))
print(merge([[1,3],[2,6],[8,10],[15,18]]))
print(merge(
        [[2,3],[4,5],[6,7],[8,9],[1,10]]))

