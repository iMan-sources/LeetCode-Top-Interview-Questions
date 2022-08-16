//
//  main.swift
//  LC_227
//
//  Created by AnhLe on 05/05/2022.
//

import Foundation

func operation(calculation: String, a: Int, b: Int)-> Int{
    switch calculation {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "/" :
        return a / b
    default:
        return a + b
    }
}

func priority(calculation: String) -> Int{
    switch calculation {
    case "+":
        return 1
    case "-":
        return 1
    case "*":
        return 2
    case "/" :
        return 2
    default:
        return 0
    }
}

func detectMathSymbol(_ s: String) -> Bool{
    if s == "+" || s == "-" || s == "*" || s == "/" {
        return true
    }
    return false
}

func splitString(_ s: String) -> [String]{
    var strs = [String]()
    var s = Array(s)
    var isSubtract = false
    s.append(" ")
    for i in 0..<s.count {
        if !s[i].isNumber {
            var number = ""
            for j in (0..<i).reversed() {
                
                if s[j].isNumber{
                    number.append(s[j])
                }else{
                    break
                }
            }
            if !number.isEmpty {
                var rvs = String(Array(number).reversed())
                rvs = isSubtract ? "-\(rvs)" : rvs
                isSubtract = false
                strs.append(rvs)
            }
            if detectMathSymbol(String(s[i])){
                if s[i] == "-" {
                    s[i] = "+"
                    isSubtract = true
                    
                }
                strs.append(String(s[i]))
                
            }
        }
    }
    
    return strs
}

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
struct CalStack {
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

func calculate(_ s: String) -> Int {
    var stack = Stack()
    var stack_2 = CalStack()
    var split = splitString(s), checked = [Bool](repeating: false, count: split.count)
    for i in 0..<split.count {
        if !detectMathSymbol(split[i]) && !checked[i] {
            stack.push(Int(split[i])!)
            checked[i] = true
        }else{
            if priority(calculation: split[i]) > 1 {
                if stack.peek() != nil {
                    let a = stack.pop()!
                    let b = Int(split[i+1])!
                    checked[i+1] = true
                    stack.push(operation(calculation: split[i], a: a, b: b))

                }
            }else if priority(calculation: split[i]) == 1 {
                stack_2.push(split[i])
            }
        }
    }
    while stack_2.peek() != nil {
        let op = stack_2.pop()!
        let a = stack.pop()!
        let b = stack.pop()!
        
        let result = operation(calculation: op, a: a, b: b)
        stack.push(result)
    }
    return stack.pop()!
}

print(calculate("312 +2232*232 - 1111"))
print(calculate("3+2*2"))
print(calculate(" 3/2 "))
print(calculate(" 3+5 / 2 "))


