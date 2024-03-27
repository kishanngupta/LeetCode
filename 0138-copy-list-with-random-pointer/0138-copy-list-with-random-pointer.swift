/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var next: Node?
 *     public var random: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *    	   self.random = nil
 *     }
 * }
 */

class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        var head = head
        var temp: Node? = Node(-1)
        var newHead = temp
        var hash: [Node: Node] = [:]

        while head != nil {
            if let node = hash[head!] {
                temp?.next = node
            } else {
                let node = Node(head!.val)
                temp?.next = node
                hash[head!] = node
            }
            temp = temp?.next

            if let random = head?.random {
                if let node = hash[random] {
                    temp?.random = node
                } else {
                    let node = Node(random.val)
                    temp?.random = node
                    hash[random] = node
                }
            }

            print(temp?.val, temp?.random?.val)
            head = head?.next
        }
        
        return newHead?.next
    }
}