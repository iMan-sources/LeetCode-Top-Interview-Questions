//
//  main.swift
//  LC_150
//
//  Created by AnhLe on 03/04/2022.
//

import Foundation

class Solution {
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
    
    func calculate(num_1: Int, num_2: Int, operation: String) -> Int{
        switch operation {
        case "+":
            return num_2 + num_1
        case "-":
            return num_2 - num_1
        case "*":
            return num_2 * num_1
        case "/":
            return num_2 / num_1
        default:
            break
        }
        return 0
    }
    
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = Stack()
        for i in 0..<tokens.count {
            if let num = Int(tokens[i]) {
                stack.push(num)
            }else{
                var above = 0, below = 0
                if let num_1 = stack.peek() {
                    above = num_1
                    _ = stack.pop()
                }
                
                if let num_2 = stack.peek() {
                    below = num_2
                    _ = stack.pop()
                }
                
                let res = calculate(num_1: above, num_2: below, operation: tokens[i])
                stack.push(res)
            }
        }
        return stack.peek() ?? 0
        
    }
}

var solution = Solution()
print(solution.evalRPN(["4","13","5","/","+"]))

