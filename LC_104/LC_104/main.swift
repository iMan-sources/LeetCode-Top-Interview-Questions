//
//  main.swift
//  LC_104
//
//  Created by AnhLe on 09/03/2022.
//

import Foundation

class Solution {
    var len = 0
    
    func duyetNLR(root: TreeNode?, count: Int){
        if root != nil {
            if let data = root?.val {
                len = max(len, count)
            }
            duyetNLR(root: root?.left, count: count+1)
            duyetNLR(root: root?.right, count: count+1)
        }
    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        len = 0
        duyetNLR(root: root, count: 0)
        len += 1
        return len
    }
}

