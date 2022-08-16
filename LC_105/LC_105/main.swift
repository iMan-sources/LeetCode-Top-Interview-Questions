//
//  main.swift
//  LC_105
//
//  Created by AnhLe on 10/03/2022.
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


func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    if preorder.isEmpty || inorder.isEmpty {
        return nil
    }
    let root = TreeNode(preorder[0])
    guard let mid = inorder.firstIndex(where: {$0 == preorder[0]}) else { return nil }
    
    //left side
    root.left = buildTree(Array(preorder[1..<mid+1]), Array(inorder[0..<mid]))
    //right side
    root.right = buildTree(Array(preorder[mid+1..<preorder.count]), Array(inorder[mid+1..<inorder.count]))
    
    return root
    
    
}
