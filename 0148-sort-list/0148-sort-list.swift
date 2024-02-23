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
    func sortList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil { return head }

        let mid = findMid(head)
        var right = mid?.next
        mid?.next = nil
        var left = head
        
        // print("list",left?.val, mid?.val, right?.val)

        left = sortList(left)
        right = sortList(right)
        return merge(left, right)
    }

    private func merge(_ left: ListNode?,_ right: ListNode?) -> ListNode? {
        var prev: ListNode? = ListNode(-1)
        var head = prev
        var left = left
        var right = right
        
        while(left != nil && right != nil ) {
            if left!.val < right!.val {
                prev?.next = left
                left = left?.next
            } else {
                prev?.next = right
                right = right?.next
            }
            prev = prev?.next
        }

        if left != nil {
            prev?.next = left
        }

        if right != nil {
            prev?.next = right
        }

        return head?.next
    }

    private func findMid(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head?.next
        
        while(fast != nil && fast?.next != nil ) {
            fast = fast?.next?.next 
            slow = slow?.next
        }
        return slow
    }
}