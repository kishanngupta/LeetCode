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
    var result: [DataStructure] = []
    func verticalTraversal(_ root: TreeNode?) -> [[Int]] {
        var output: [[Int]] = []
        traverse(root,0,0)
        result.sort()
        
        for (index,item) in result.enumerated() {
            if output.isEmpty {
                output.append([item.val])
            } else {
                if result[index-1].x == item.x {
                    output[output.count-1].append(item.val)
                } else {
                    output.append([item.val])
                }
            } 
        }
        
        return output
    }
    
    func traverse(_ root: TreeNode?,_ x: Int,_ y: Int) {
        if root == nil { return }
        traverse(root?.left, x-1,y-1)
        let model = DataStructure(root!.val,x,y)
        result.append(model)
        traverse(root?.right, x+1,y-1)
    }
}
struct DataStructure: Comparable {
    var val: Int
    var x: Int
    var y: Int
    
    init(_ value: Int,_ xAxis: Int,_ yAxis: Int) {
        val = value
        x = xAxis
        y = yAxis
    }
    
    static func <(lhs: DataStructure, rhs: DataStructure) -> Bool {
        if lhs.x != rhs.x {
            return lhs.x < rhs.x
        } else if lhs.y != rhs.y {
            return lhs.y > rhs.y
        } else {
            return lhs.val < rhs.val
        }
    }
    
}