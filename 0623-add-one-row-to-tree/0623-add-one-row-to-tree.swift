class Solution {
    func addOneRow(_ root: TreeNode?, _ val: Int, _ depth: Int) -> TreeNode? {
        
        guard depth > 1 else {
            return TreeNode(val, root, nil)
        }
        
        var height = 1
        var queue = [root!]
        
        while !queue.isEmpty {
            height += 1

            for node in queue {
                queue.removeFirst()
                
                if height == depth {
                    node.left = TreeNode(val, node.left, nil)
                    node.right = TreeNode(val, nil, node.right)
                } else {
                  if let left = node.left {
                        queue.append(left)
                    }
                    if let right = node.right {
                        queue.append(right)
                    }  
                } 
            }
        }
        
        return root
    }
}