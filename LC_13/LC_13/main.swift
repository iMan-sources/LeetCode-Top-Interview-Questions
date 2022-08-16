//
//  main.swift
//  LC_13
//
//  Created by AnhLe on 22/01/2022.
//

import Foundation

func roman(_ num: String)-> Int{
    switch num {
    case "I":
        return 1
    case "V":
        return 5
    case "X":
        return 10
    case "XL":
        return 40
    case "L":
        return 50
    case "C":
        return 100
    case "D":
        return 500
    case "M":
        return 1000
    default:
        return 1
    }
}

func romanToInt(_ s: String) -> Int {
    let romanString = Array(s)
    var res = 0
    var checked = [Bool](repeating: true, count: romanString.count)
    for i in 0..<romanString.count-1 {
        if checked[i] {
            let num_1 = roman(String(romanString[i]))
            let num_2 = roman(String(romanString[i+1]))
            if num_1 >= num_2 {
                res += num_1
                //last index
                checked[i] = false
                if i + 1 == romanString.count - 1{
                    res += num_2
                    checked[i+1] = false
                }
            }else{
                let num_3 = num_2 - num_1
                res += num_3
                checked[i] = false
                checked[i+1] = false
            }
        }
    }
    if checked[romanString.count-1] {
        res += roman(String(romanString.last!))
    }
    
    return res 
}
print(romanToInt("III"))
print(romanToInt("LVIII"))
print(romanToInt("MCMXCIV"))
print(romanToInt("MDCXCV"))
