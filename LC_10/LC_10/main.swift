//
//  main.swift
//  LC_10
//
//  Created by AnhLe on 20/01/2022.
//

import Foundation
func matchStar(_ p: String) -> String{
    let array = Array(p)
    var newP = ""
    var index = [Int]()
    for i in 1..<array.count {
        if array[i] == "*" {
            index.append(i)
        }
    }
    for i in 0..<index.count {
        var char = ""
        for j in (0..<index[i]).reversed() {
            if array[j] == "*" {
                break
            }
            else{
                char.append(array[j])
            }
        }
        char.append(char)
        newP.append(char)
    }
    for i in index[index.count-1]..<p.count {
        if array[i] != "*" {
            newP.append(array[i])
        }
    }
    return newP
}
func isMatch(_ s: String, _ p: String) -> Bool {
    let array = Array(p)
    var newP = ""
    if !p.contains(".") && !p.contains("*") {
        return p == s
    }
    else if p.contains("*") && !p.contains("."){
        newP = matchStar(p)
        return newP.contains(s)
    }
    else if p.contains(".") && !p.contains("*"){
        for i in 0..<array.count-1 {
            newP.append(array[i])
        }
        return s.contains(newP)
    }
    return true
}

print(isMatch("mississippi", "mis*is*p*."))
