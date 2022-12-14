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
 class Solution {
    func isValid(root1: TreeNode?, root2: TreeNode?) -> Bool{
        if root1 == nil && root2 == nil {
            return true
        }
        if root1 != nil && root2 != nil && root1?.val == root2?.val {
            return isValid(root1: root1?.left, root2: root2?.right) && isValid(root1: root1?.right, root2: root2?.left)
        }
        return false
    }
    func isSymmetric(_ root: TreeNode?) -> Bool {
        
        return isValid(root1: root, root2: root)
    }
 }
