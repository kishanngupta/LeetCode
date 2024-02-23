/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func deleteMiddle(_ head: ListNode?) -> ListNode? {
        if head?.next == nil { return nil }
        else if head?.next?.next == nil {
            head?.next = nil
            return head
        }
        let midNode = mid(head)
        midNode?.val = midNode!.next!.val
        midNode?.next = midNode?.next?.next
        return head
    }
    
    private func mid(_ head: ListNode?) -> ListNode? {
        
        var slow = head
        var fast = head
        
        while(fast != nil && fast?.next != nil) {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return slow
    }
}