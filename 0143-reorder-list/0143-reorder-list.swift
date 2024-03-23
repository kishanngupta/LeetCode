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
   // - Complexity:
    //   - time: O(n), where n is the number of nodes in the linked list.
    //   - space: O(1), only constant space is used.
    
    func reorderList(_ head: ListNode?) {
        guard head != nil else { return }

        var slow = head
        var fast = head

        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        let reversedList = reverseList(slow)
        mergeLists(head, reversedList)
    }
    

    private func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var curr = head
        var next: ListNode? = nil

        while curr != nil {
            next = curr?.next

            curr?.next = prev
            prev = curr
            curr = next
        }

        return prev
    }
    

    private func mergeLists(_ first: ListNode?, _ second: ListNode?) {
        var first = first
        var second = second
        var tmp: ListNode? = nil

        while second?.next != nil {
            tmp = first?.next
            first?.next = second
            first = tmp

            tmp = second?.next
            second?.next = first
            second = tmp
        }
    }

}