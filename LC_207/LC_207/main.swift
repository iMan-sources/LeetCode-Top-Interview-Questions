//
//  main.swift
//  LC_207
//
//  Created by AnhLe on 18/04/2022.
//

import Foundation
//pre[1] = 0
//pre[0] = 7
//pre[7] = 1
func checkValid(pre: [Int: Int], key: Int) -> Bool{
    var set = Set<Int>(), value = pre[key]!, isValid = false
    set.insert(key)
    while !set.contains(value) {
        set.insert(value)
        if let val = pre[value] {
            value = val
        }else{
            isValid = true
            break
        }
    }
    return isValid
    
}

func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
    if prerequisites.isEmpty {
        return true
    }
    var pre = [Int: Int]()
    for i in 0..<prerequisites.count {
        let array = prerequisites[i]
        print(array)
        pre[array[0]] = array[1]
    }
    print(pre)
    var result = Set<Int>()
    for i in 0..<prerequisites.count {
        let key = prerequisites[i][0]
        if checkValid(pre: pre, key: key) {
            _ = prerequisites[i].map({result.insert($0)})
        }
        else{
            return false
        }
    }
    
    return true
}

//print(canFinish(4,[[1,0],[7,0], [0,3]]))
//print(canFinish(3,[[1,0],[7,0]]))
//print(canFinish(2,[[1,0]]))
//print(canFinish(2, [[1,0],[0,1]]))
//print(canFinish(5, [[1,4],[2,4],[3,1],[3,2]]))
print(canFinish(3, [[1,0],[1,2],[0,1]]))


