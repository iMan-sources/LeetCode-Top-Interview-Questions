//
//  main.swift
//  LC_22
//
//  Created by AnhLe on 25/01/2022.
//

import Foundation
var binary = [Int]()
var res = [String]()
struct Stack {
    fileprivate var array: [String] = []
    mutating func push(_ element: String){
        array.append(element)
    }
    mutating func pop() -> String? {
        return array.popLast()
    }
    func peek() -> String?{
        return array.last
    }
}
func generateParentheses(arr: [Int], n: Int)->Bool{
    var count = 0
    if arr[0] == 0 {
        return false
    }
    for i in 0..<arr.count {
        if arr[i] == 1 {
            count += 1
        }
    }
    if count == n {
        return true
    }
    return false
}
func isValid(_ s: String) -> Bool {
        let array = Array(s), arr = array.map({String($0)})
        var stack = Stack()
        for i in 0..<arr.count {
            if arr[i] == "(" {
                stack.push(arr[i])
            }else {
                let peek = stack.peek()
                if peek != "(" {
                    return false
                }
                stack.pop()
            }
        }
        if stack.peek() != nil {
            return false
        }
        return true
    }
func generateBinary(i: Int, n: Int){
    for j in 0...1 {
        binary[i] = j
        if i == n-1 {
            if generateParentheses(arr: binary, n: n/2) {
                var parentheses = ""
                for i in binary {
                    if i == 0 {
                        parentheses.append(")")
                    }else {parentheses.append("(")}
                }
                if isValid(parentheses) {
                    res.append(parentheses)
                }
            }
            
        }
        else{
            generateBinary(i: i+1, n: n)
        }
    }
}

func generateParenthesis(_ n: Int) -> [String] {
    binary = [Int](repeating: 0, count: n*2)
    res.removeAll()
    generateBinary(i: 0, n: n*2)
    return res
}

print(generateParenthesis(1))
