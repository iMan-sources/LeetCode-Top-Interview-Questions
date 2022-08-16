//
//  main.swift
//  LC_127
//
//  Created by AnhLe on 16/03/2022.
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
    var empty: Bool{
        return elements.isEmpty
    }
}

struct Element: Hashable {
    let word: String
    let count: Int
}

func handle(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int{
    var set = Set<String>(), queue = Queue<Element>(), result = Int(INT32_MAX), words = Set<String>()
    let first = Element(word: beginWord, count: 1), alphabet = "qwertyuiopasdfghjklzxcvbnm"
    queue.enqueue(first)
    set.insert(first.word)
    words.insert(first.word)
    // make sure have no duplicate word
    for i in wordList {
        words.insert(i)
    }
    while !queue.empty {
        let element = queue.dequeue()!
        if element.word == endWord {
            result = min(result, element.count)
        }
        let word = Array(element.word)
        for i in 0..<word.count {
            var newWord = word
            for j in alphabet {
                if newWord[i] == j {
                    continue
                }
                newWord[i] = j
                let newElement = Element(word: String(newWord), count: element.count+1)
                if words.contains(newElement.word) && !set.contains(newElement.word) {
                    set.insert(newElement.word)
                    queue.enqueue(newElement)
                }
            }
        }
        
    }
    return result == Int(INT32_MAX) ? 0 : result
}



func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
    return handle(beginWord, endWord, wordList)
}

