//
//  main.swift
//  LC_146
//
//  Created by AnhLe on 27/03/2022.
//

import Foundation

class LRUCache {
    var len = 0,dict = [Int: Int](), recentlyVisited = [Int]()
    init(_ capacity: Int) {
        len = capacity
    }
    
    func get(_ key: Int) -> Int {
        if dict[key] != nil {
            changePriority(key: key)
        }
        print(recentlyVisited)
        return dict[key] ?? -1
    }
    
    func changePriority(key: Int){
        let index = findIndex(key: key)
        let key = recentlyVisited[index]
        recentlyVisited.remove(at: index)
        recentlyVisited.append(key)

    }
    
    func findIndex(key: Int) -> Int{
        return recentlyVisited.firstIndex(where: {$0 == key}) ?? 0
    }
    
    func put(_ key: Int, _ value: Int) {
        if dict[key] != nil {
            dict[key] = value
            changePriority(key: key)
        }
        else{
            if dict.count < len  {
                dict[key] = value
                recentlyVisited.append(key)

            }else{
                dict[recentlyVisited[0]] = nil
                recentlyVisited.remove(at: 0)
                
                recentlyVisited.append(key)
                
                dict[key] = value
            }
        }
        
        
    }
}
//["LRUCache","get","put","get","put","put","get","get"]
//[[2],[2],[2,6],[1],[1,5],[1,2],[1],[2]]

//["LRUCache","put","put","put","put","get","get"]
//[[2],[2,1],[1,1],[2,3],[4,1],[1],[2]]
let obj = LRUCache(3)
//print(obj.get(2))
obj.put(1, 1)
obj.put(2, 2)
obj.put(3, 3)
obj.put(4, 4)
//obj.put(2, 3)
//print(obj.get(1))
//print(obj.get(2))

//print(obj.get(1))
//print(obj.get(2))
//obj.put(4, 1)
print(obj.get(4))
print(obj.get(3))
print(obj.get(2))
print(obj.get(1))
obj.put(5, 5)
print(obj.get(2))
print(obj.get(3))
print(obj.get(4))
print(obj.get(5))
//obj.put(1, 1)
//
//obj.put(4, 1)
//print(obj.get(2))
//print(obj.get(1))
//print(obj.get(3))
//print(obj.get(4))
//obj.put(1, 2)
//print(obj.get(1))
//print(obj.get(2))




