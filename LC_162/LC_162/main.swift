//
//  main.swift
//  LC_162
//
//  Created by AnhLe on 05/04/2022.
//

import Foundation

struct Queue<T> {
    private var elements: [T] = []
    
    mutating func enqueue(_ value: T) {
        elements.append(value)
    }
    
    mutating func dequeue() -> T? {
        guard !elements.isEmpty else {
            return nil
        }
        return elements.removeFirst()
    }
    
    var head: T? {
        return elements.first
    }
    
    var tail: T? {
        return elements.last
    }
    
    var size: Int {
        return elements.count
    }
}
func findPeakElement(_ nums: [Int]) -> Int {
    var queue = Queue<Int>(),result = 0
    queue.enqueue(nums[0])
    for i in 1..<nums.count {
        let peak = queue.head!
        if nums[i] > peak {
            _ = queue.dequeue()
            queue.enqueue(nums[i])
            result = i
        }
    }
    return result
}

print(findPeakElement([0,2]))

