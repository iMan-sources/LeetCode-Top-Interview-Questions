//
//  main.swift
//  LC_29
//
//  Created by AnhLe on 27/01/2022.
//

import Foundation

func divide(_ dividend: Int, _ divisor: Int) -> Int {

    var newDivisor = divisor
    var newDividen = dividend
    var count = 0
    if dividend * divisor >= 0 {
        newDivisor *= -1
    }
    if divisor == 1{
        count = dividend
    }
    else if divisor == -1{
        count = 0 - dividend
    }
    else{
        if dividend >= 0 {
            while newDividen + newDivisor >= 0 {
                newDividen += newDivisor
                count += 1
                if newDividen == 0 {
                    break
                }
            }
        }else{
            while newDividen + newDivisor <= 0 {
                newDividen += newDivisor
                count += 1
                if newDividen == 0 {
                    break
                }
            }
        }
    }
    
    if count >= 2147483648 {
        count = 2147483647
    }

    if (count * divisor) * dividend >= 0 {
        return count
    }
    count *= -1
    if count <= -2147483648 {
        count = -2147483648
    }
    return count
}

//print(divide(10, 3))
//print(divide(7, -3))
//print(divide(0, 1))
//print(divide(1, 1))
//print(divide(8, 2))
//print(divide(-1, 1))
//print(divide(-10, 3))
print(divide(-2147483648, -1))

