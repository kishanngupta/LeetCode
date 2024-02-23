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
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head?.next == nil { return true }

        var tuple = mid(head)
        var isEven = tuple.isEven
        var rev = reverse(isEven ? (tuple.node) : (tuple.node?.next))
        var temp = head

        while(rev != nil) {
            if rev?.val != temp?.val {
                return false
            }
            rev = rev?.next
            temp = temp?.next
        }
        return true
    }

    func reverse(_ head: ListNode?) -> ListNode? {
        var temp = head
        var prev: ListNode? = nil

        while(temp != nil) {
            let next = temp?.next
            temp?.next = prev
            prev = temp
            temp = next
        }

        return prev
    }

    func mid(_ head: ListNode?) -> (node: ListNode?, isEven: Bool) {
        var slow = head
        var fast = head
        
        while(fast != nil && fast?.next != nil) {
            fast = fast?.next?.next
            slow = slow?.next
        }

        return (slow, fast == nil)
    }
}