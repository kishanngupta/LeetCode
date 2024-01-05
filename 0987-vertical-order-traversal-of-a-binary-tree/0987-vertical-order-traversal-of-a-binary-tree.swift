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
    var queue: [DataStructure] = []
    var result: [[Int]] = []
    
    func verticalTraversal(_ root: TreeNode?) -> [[Int]] {
        if root == nil { return [] }
        
        inOrder(root,0,0)
        queue.sort()
        group()
        return result
    }
    
    private func group() {
        var temp: [Int] = []
        for i in 0..<queue.count {
            if i < 1 {
                temp.append(queue[i].val)
            } else {
                if queue[i-1].x == queue[i].x {
                    temp.append(queue[i].val)
                } else {
                    result.append(temp)
                    temp = [queue[i].val]
                }
            }
        }
        result.append(temp)
    }
    
    private func inOrder(_ root: TreeNode?,_ x: Int,_ y: Int) {
        if root == nil { return }
        inOrder(root?.left, x-1, y-1)
        let model = DataStructure(
            x: x,
            y: y,
            val: root!.val
        )
        queue.append(model)
        inOrder(root?.right, x+1, y-1)
    }
}

struct DataStructure: Comparable {
    var x: Int
    var y: Int
    var val: Int
    
    static func < (lhs: DataStructure, rhs: DataStructure) -> Bool {
        if lhs.x != rhs.x {
            return lhs.x < rhs.x
        } else if lhs.y != rhs.y {
            return lhs.y > rhs.y
        } else {
            return lhs.val < rhs.val
        }
    }
}