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
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        if root == nil { return nil }
        if root!.val == key {
            return helper(root)
        }
        var head = root

        while(head != nil) {
            if head!.val > key {
                if let value = head?.left?.val, value == key {
                    head?.left = helper(head?.left)
                } else {
                    head = head?.left
                }
            } else {
                if let value = head?.right?.val, value == key {
                    
                    head?.right = helper(head?.right)
                } else {
                    head = head?.right
                }
            }
        }
        return root
    }

    private func helper(_ root: TreeNode?) -> TreeNode? {
        if root?.left == nil {
            return root?.right
        } else if root?.right == nil {
            return root?.left
        } else {
            let right = root?.right
            let mostRight = searchRight(root?.left)
            mostRight?.right = right
            return root?.left
        }
    }

    private func searchRight(_ root: TreeNode?) -> TreeNode? {
        var root = root
        while(root?.right != nil) {
            root = root?.right
        }
        return root
    }
}