//
//  main.swift
//  LC_8
//
//  Created by AnhLe on 17/01/2022.
//

import Foundation
func myAtoi(_ s: String) -> Int {

    var res = 0, isNeg = false, nums = "",st = 0
    var str = s.components(separatedBy: " ")

    for i in (0..<str.count).reversed() {
        if str[i].isEmpty {
            str.remove(at: i)
        }
    }
    if str.count == 0 {
        return 0
    }
   

    let array = Array(str[0])
    if array[0] == "-"  {
        isNeg = true
        st = 1
    }
    else if array[0] == "+"{
        st = 1
    }
    else{
        st = 0
    }
    for i in st..<array.count{
        if array[i] >= "0" && array[i] <= "9" {
            nums.append(array[i])
        }
        else{
            break
        }
        
    }
    if nums.isEmpty{
        return 0
    } 
    res = Int(nums) ?? 2147483647

    if isNeg {
        res *= -1
    }
    if res > 2147483647{
      
       return 2147483647
    }
    else if res < -2147483648{
        return -2147483648
    } 
    return res
}
//
print(myAtoi("-91283472332"))
print(myAtoi("00000-42a1234"))
print(myAtoi("21474836460"))
print(myAtoi("+1"))
print(myAtoi("+-12"))
print(myAtoi("   -42"))
print(myAtoi("words and 987"))
print(myAtoi("3.14159"))
print(myAtoi(""))
print(myAtoi(" "))
print(myAtoi("20000000000000000000"))
print(myAtoi("  0000000000012345678"))
