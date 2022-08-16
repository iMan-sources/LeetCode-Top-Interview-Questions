//
//  main.swift
//  LC_412
//
//  Created by AnhVT12.REC on 8/16/22.
//

import Foundation

func isFizzOrBuzz(_ n: Int) -> String{
    if n % 3 == 0 && n % 5 == 0{
        return "FizzBuzz"
    }else if n % 3 == 0 {
        return "Fizz"
    }else if n % 5 == 0{
        return "Buzz"
    }
    return String(n)
}

func fizzBuzz(_ n: Int) -> [String] {
    var res = [String]()
    for i in 1...n{
        res.append(isFizzOrBuzz(i))
    }
    return res
}

