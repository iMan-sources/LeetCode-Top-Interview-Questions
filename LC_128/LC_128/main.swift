//
//  main.swift
//  LC_128
//
//  Created by AnhLe on 18/03/2022.
//

import Foundation

func longestConsecutive(_ nums: [Int]) -> Int {
    if nums.isEmpty {
        return 0
    }
    var consecutive = [Int](repeating: 1, count: nums.count), sortedArray = nums.sorted(), result = 1, set = Set<Int>()
    for i in sortedArray {
        set.insert(i)
    }
    sortedArray.removeAll()
    for _ in 0..<set.count {
        sortedArray.append(set.first!)
        set.removeFirst()
    }
    sortedArray = sortedArray.sorted()
    for i in 1..<sortedArray.count {
        if sortedArray[i] - 1 == sortedArray[i-1] {
            consecutive[i] = consecutive[i-1] + 1
            result = max(result, consecutive[i])
        }
    }
    return result
}

print(longestConsecutive([0,1,2,1]))

