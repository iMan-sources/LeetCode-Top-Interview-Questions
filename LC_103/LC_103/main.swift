//
//  main.swift
//  LC_103
//
//  Created by AnhLe on 08/03/2022.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
var mat = [[Int]](repeating: [], count: 2005), len = 0

func duyetNLR(root: TreeNode?, count: Int){
    if root != nil {
        if let data = root?.val {
            len = max(len, count)
            mat[count].append(data)
        }
        duyetNLR(root: root?.left, count: count+1)
        duyetNLR(root: root?.right, count: count+1)
    }
}
func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
    if root == nil {
        return []
    }
    len = 0
    mat = [[Int]](repeating: [], count: 2005)
    duyetNLR(root: root, count: 0)
    var res = [[Int]]()
    duyetNLR(root: root, count: 0)
    for i in 0...len {
        if i % 2 != 0{
            mat[i] = mat[i].reversed()
        }
        res.append((mat[i]))
    }
    return res
    
}






