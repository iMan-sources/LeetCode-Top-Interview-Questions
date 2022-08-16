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
      
      var res = [Int]()
      func duyetLNR(root: TreeNode?){
        if root != nil {
            duyetLNR(root: root?.left)
            if let data = root?.val {
                res.append(data)
            }
            duyetLNR(root: root?.right)
        }
      }
      
      func inorderTraversal(_ root: TreeNode?) -> [Int] {
        res.removeAll()
        duyetLNR(root: root)
        return res
        
      }
