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
    func isEvenOddTree(_ root: TreeNode?) -> Bool {
        var level = 0
        var queue = [root!]
        var result: Bool = true

        while(!queue.isEmpty) {
            var preValue = level%2 == 0 ? 0 : Int.max
            for _ in queue {
                let node = queue.removeFirst()
                let val = node.val
                
                if level%2 == 0 {    
                    if val%2 == 0 {
                        // print("1", preValue, val)
                        return false
                    } else if preValue >= val {
                        // print("2", preValue, val)
                        return false
                    } else {
                        preValue = val
                    }
                } else {
                    if val%2 == 1 {
                        // print("3", preValue, val)
                        return false
                    } else if preValue <= val {
                        // print("4", preValue, val)
                        return false
                    } else {
                        preValue = val
                    }
                }

                if let left = node.left {
                    queue.append(left)
                }

                if let right = node.right {
                    queue.append(right)
                }
            }
            level += 1
        }
        return true
    }
}