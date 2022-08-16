//
//  main.swift
//  LC_17
//
//  Created by AnhLe on 23/01/2022.
//

import Foundation
var res =  [String]()
var mat = [String](repeating: "" , count: 5)
func Try(i: Int, k : Int, char: [[Character]]){
    for j in 0..<char[i].count {
        mat[i] = String(char[i][j])
        if i == k {
            var str = ""
            for index in 0...k {
                str.append(mat[index])
            }
            res.append(str)
        }
        else{
            Try(i: i+1, k: k, char: char)
        }
    }
}
func detect(_ digits: String) -> String { 
    switch digits {
    case "2":
        return "abc"
    case "3":
        return "def"
    case "4":
        return "ghi"
    case "5":
        return "jkl"
    case "6":
        return "mno"
    case "7":
        return "pqrs"
    case "8":
        return "tuv"
    case "9":
        return "wxyz"
    default:
        return ""
    }
}
func letterCombinations(_ digits: String) -> [String] {
    let digit = Array(digits), k = digit.count
    if digit.count < 2 {
        let res = Array(detect(digits))
        return res.map({String($0)})
    }
    var charater = [[Character]](), result = [String]()
    for i in 0..<digit.count {
        charater.append(Array(detect(String(digit[i]))))
    }
    Try(i: 0, k: k-1, char: charater)
    result = res
    return result

}

print(letterCombinations("2345"))
print(letterCombinations(""))
print(letterCombinations("2"))


