//
//  main.swift
//  LC_58
//
//  Created by AnhLe on 04/02/2022.
//

import Foundation

func split(_ s: String) -> [String]{
    let chars = Array(s)
    var res = [String]()
    var word = ""
    for i in 0..<chars.count {
        if chars[i] == " " {
            if !word.isEmpty {
                res.append(word)
            }
            word = ""
        }else {
            word.append(String(chars[i]))
        }
    }
    if !word.isEmpty {
        res.append(word)
    }
    return res
}

func lengthOfLastWord(_ s: String) -> Int {
    let array = split(s)
    if array.isEmpty {
        return 1
    }
    return array[array.count-1].count
}
print(lengthOfLastWord("   fly me   to   the moon  "))

