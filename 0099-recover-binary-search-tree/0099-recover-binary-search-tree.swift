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
final class Solution {

    var first: TreeNode?
    var second: TreeNode?
    var third: TreeNode?
    var prev: TreeNode?

    func recoverTree(_ root: TreeNode?) {
        travel(root)
        // print(first?.val, second?.val, third?.val)
        if third == nil {
            swap(&first, &second)
        } else {
            swap(&first, &third)
        }
    }

    private func swap(_ first: inout TreeNode?, _ second: inout TreeNode?) {
        let temp = first!.val
        first?.val = second!.val
        second?.val = temp
    }

    private func travel(_ root: TreeNode?) {
        if root == nil { return }
        travel(root?.left)
        if let preValue = prev?.val, preValue >= root!.val {
            if first == nil {
                first = prev
                second = root
            } else {
                third = root
            }
        }
        prev = root
        travel(root?.right)
    }
}