//
//  main.swift
//  LC_122
//
//  Created by AnhLe on 15/03/2022.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0
    for i in 1..<prices.count {
        if prices[i] > prices[i-1] {
            profit += (prices[i] - prices[i-1])
        }
    }
    return profit
}

