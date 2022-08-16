//
//  main.swift
//  LC_38
//
//  Created by AnhLe on 08/02/2022.
//

import Foundation

func frequence(array: [Character])->String{
    var res = [Int](repeating: 0, count: array.count)
    var checked = [Bool](repeating: false, count: array.count)
    var char = [Character]()
    
    for i in 0..<array.count {
        for j in i..<array.count {
            if array[i] == array[j] && !checked[j] {
                res[i] += 1
                checked[j] = true
            }
            else{
                break
            }
        }
        char.append(array[i])
    }
    var str = ""
    for i in 0..<res.count {
        if res[i] != 0 {
            str.append(String(res[i]) + String(char[i]))
        }
    }
    return str
}

func countAndSay(_ n: Int) -> String {
    if n == 1 {
        return "1"
    }
    let st = "1"
    var res = [String]()
    res.append(st)
    for i in 1..<n {
        let char = Array(res[i-1])
        let str = frequence(array: char)
        res.append(str)
    }
    return res[n-1]
}

print(countAndSay(30))
