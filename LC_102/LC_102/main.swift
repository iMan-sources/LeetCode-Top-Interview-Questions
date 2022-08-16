class Solution {
    var mat = [[Int]](repeating: [], count: 2005), len = 0
    func levelOrder(root: TreeNode?, count: Int){
    if root != nil {
        levelOrder(root: root?.left, count: count + 1)
        if let data = root?.val{
            len = max(len, count)
            mat[count].append(data)
        }
        levelOrder(root: root?.right, count: count+1)
    }
}
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
    if root == nil {
        return []
    }
    len = 0
    mat = [[Int]](repeating: [], count: 2005)
    levelOrder(root: root, count: 0)
    var res = [[Int]]()
    for i in 0...len {
        res.append(mat[i])
    }
        return res
    }
}
