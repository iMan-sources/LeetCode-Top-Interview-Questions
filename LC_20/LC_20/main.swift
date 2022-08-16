//
//  main.swift
//  LC_20
//
//  Created by AnhLe on 25/01/2022.
//

import Foundation

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

func isValid(_ s: String) -> Bool {
    let array = Array(s), arr = array.map({String($0)})
    var stack = Stack()
    for i in 0..<arr.count {
        if arr[i] == "(" || arr[i] == "{" || arr[i] == "[" {
            stack.push(arr[i])
        }else if arr[i] == ")"{
            let peek = stack.peek()
            if peek != "(" {
                return false
            }
            stack.pop()
        }else if arr[i] == "]"{
            let peek = stack.peek()
            if peek != "[" {
                return false
            }
            stack.pop()
        }else if arr[i] == "}"{
            let peek = stack.peek()
            if peek != "{" {
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

print(isValid("()"))
print(isValid("()[]{}"))
print(isValid("(]"))

