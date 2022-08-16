//
//  main.swift
//  LC_116
//
//  Created by AnhLe on 14/03/2022.
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


public class Node {
    public var val: Int
    public var left: Node?
    public var right: Node?
    public var next: Node?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.next = nil
    }
}

func connect(_ root: Node?) -> Node? {
    if root == nil {
        return nil
    }
    var queue = Queue<Node?>()
    queue.enqueue(root!)
    while queue.head != nil {
        var size = queue.size
        var last: Node? = nil
        while size != 0 {
            let node: Node? = queue.dequeue()!
            if last != nil {
                last?.next = node
            }
            

            if node?.left != nil {
                queue.enqueue(node!.left)
            }
            if node?.right != nil {
                queue.enqueue(node!.right)
            }
            last = node
            size -= 1
        }
        last?.next = nil
    }
    return root
}
