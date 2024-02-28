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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if preorder.count == 0 { return nil }
        let root = TreeNode(preorder[0])

        let totalCount = preorder.count
        let rootIndex = inorder.firstIndex(of: root.val) ?? -1
        let leftCount = rootIndex
        let rightCount = totalCount-leftCount-1
        
        root.left = buildTree(
            Array(preorder[1..<leftCount+1]),
            Array(inorder[0..<leftCount+1])
        )
        root.right = buildTree(
            Array(preorder[leftCount+1..<totalCount]),
            Array(inorder[leftCount+1..<totalCount])
        )
        return root
    }
}