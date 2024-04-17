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
    let alphabets = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var result = "zzzzzzzzzzzzz"

    func smallestFromLeaf(_ root: TreeNode?) -> String {
        var string = ""
        traverse(root, &string)
        return result
    }

    func traverse(_ root: TreeNode?,_ sum: inout String) {
        if root == nil { return }
        else if root?.left == nil && root?.right == nil {
            // if sum.count+1 < result.count {
            //     result = alphabets[root!.val] + sum
            // } else {
            //     result = min(result, (alphabets[root!.val] + sum) )
            // }
            result = min(result, (alphabets[root!.val] + sum) )
            return
        }
        sum = alphabets[root!.val] + sum
        traverse(root?.left, &sum)
        traverse(root?.right, &sum)
        sum.removeFirst()
    }

    
}