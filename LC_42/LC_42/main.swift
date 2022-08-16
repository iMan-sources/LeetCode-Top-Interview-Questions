//
//  main.swift
//  LC_42
//
//  Created by AnhLe on 11/02/2022.
//

import Foundation

// min(max(l) - max(r)) - h[i]

func trap(_ height: [Int]) -> Int {
    var maxL = [Int](),maxR = [Int](), res = 0
    maxL.append(0)
    maxR.append(0)
    var tmpLeft = [Int](), tmpRight = [Int]()
    for i in 1..<height.count {
        tmpLeft.append(height[i-1])
        maxL.append(tmpLeft.max()!)
    }
    
    for i in (0..<height.count-1).reversed() {
        tmpRight.append(height[i+1])
        maxR.append(tmpRight.max()!)
    }
    maxR = maxR.reversed()
    for i in 0..<maxR.count {
        var h = min(maxL[i], maxR[i]) - height[i]
        h = h > 0 ? h : 0
        res += h
    }
    return res
}

trap([0,1,0,2,1,0,1,3,2,1,2,1])

