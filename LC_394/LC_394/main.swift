//
//  main.swift
//  LC_394
//
//  Created by AnhVT12.REC on 8/19/22.
//

import Foundation

struct Stack<Element> {
  fileprivate var array: [Element] = []
  
  mutating func push(_ element: Element) {
    array.append(element)
  }
  
  mutating func pop() -> Element? {
    return array.popLast()
  }
  
  func peek() -> Element? {
    return array.last
  }
}
func isNumber(_ s: String) -> Bool{
    if s >= "0" && s <= "9"{
        return true
    }
    return false
}
func decodeString(_ s: String) -> String {
    var stack = Stack<String>(), result = ""
    let str = Array(s)
    for i in 0..<str.count {
        let char = String(str[i])
        if char == "]"{
            var tmp = ""
            while stack.peek() != nil && stack.peek() != "["{
                tmp =  stack.peek()! + tmp
                _ = stack.pop()
            }
            
            _ = stack.pop()
            
            var num = ""
            while stack.peek() != nil && (stack.peek()! >= "0" && stack.peek()! <= "9") {
                num.append(stack.peek()!)
                _ = stack.pop()
            }
            num = String(num.reversed())
            let rpt = Int(num) ?? 1
            let r = tmp
            for _ in 0..<rpt - 1{
                tmp.append(r)
            }
            stack.push(tmp)
        }
        
        else{
            stack.push(char)
        }

    }
    var array = [String]()
    
    while stack.peek() != nil{
        let peek = stack.peek()!
        array.append(peek)
        _ = stack.pop()
    }
    array = array.reversed()
    _ = array.map({result.append($0)})
    return result
}
print(decodeString("3[z]2[2[y]pq4[2[jk]e1[f]]]ef"))

//"zzz2[yypq4[jkjkef]"
