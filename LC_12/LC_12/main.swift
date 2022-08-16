//
//  main.swift
//  LC_12
//
//  Created by AnhLe on 21/01/2022.
//

import Foundation
func roman(_ num: Int)-> String{
    switch num {
    case 1:
        return "I"
    case 4:
        return "IV"
    case 5:
        return "V"
    case 9:
        return "IX"
    case 10:
        return "X"
    case 40:
        return "XL"
    case 50:
        return "L"
    case 90:
        return "XC"
    case 100:
        return "C"
    case 400:
        return "CD"
    case 500:
        return "D"
    case 900:
        return "CM"
    case 1000:
        return "M" 
    default:
        return "N/A"
    }
}
func split(_ num: Int)-> [Int]{
    var newNum = num
    var array = [Int]()
    while newNum > 0 {
        array.append(newNum % 10)
        newNum /= 10
    }
    for i in 0..<array.count {
        array[i] = array[i] * Int(pow(Double(10),Double(i)))
    }
    return array
}
func intToRoman(_ num: Int) -> String {
    var intergerArray = split(num), res = [String]()
    for i in 0..<intergerArray.count {
        let r = roman(intergerArray[i])
        if r == "N/A" {
            var newNum = intergerArray[i]
            var str = ""
            let maximum = 5 * Int(pow(Double(10),Double(i)))
            let minimum = 1 * Int(pow(Double(10),Double(i)))
            while newNum > 0 {
                if newNum > maximum {
                    newNum -= maximum
                    str.append(roman(maximum))
                }
                else{
                    newNum -= minimum
                    str.append(roman(minimum))
                }
            }
            res.append(str)
        }
        else{
            res.append(r)
        }
    }
    var romanRes = ""
    for i in (0..<res.count).reversed() {
        romanRes.append(res[i])
    }
    return romanRes
}
print(intToRoman(3999))

