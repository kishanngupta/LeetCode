/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        if postorder.count == 0 { return nil }
        
        var root = TreeNode(postorder.last!)
        var totalCount = postorder.count
        var index = inorder.firstIndex(of: root.val) ?? -1
        var leftCount = index
        var rightCount = totalCount-leftCount-1
        
        root.left = buildTree(
            Array(inorder[0..<leftCount]),
            Array(postorder[0..<leftCount])
        )
        root.right = buildTree(
            Array(inorder[leftCount+1..<totalCount]),
            Array(postorder[leftCount..<totalCount-1])
        )
        return root
    }
}