/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        
        while(fast != nil) {
            slow = slow?.next
            fast = fast?.next?.next
            
            if fast != nil && fast === slow {
                break
            }
        }
        
        if fast == nil { return nil }
        slow = head
        
        while slow !== fast {
            slow = slow?.next
            fast = fast?.next
        }
        
        return fast
        
    }
}