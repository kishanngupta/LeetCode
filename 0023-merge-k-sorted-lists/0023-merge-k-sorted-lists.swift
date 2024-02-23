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
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.count < 2 { return lists.first ?? nil }
        
        var result = merge(lists[0], lists[1])
        for i in 2..<lists.count {
            result = merge(result, lists[i])
        }
        return result
    }

    private func merge(_ head1: ListNode?,_ head2: ListNode?) -> ListNode? {
        var temp1 = head1
        var temp2 = head2
        var prev: ListNode? = ListNode(-1)
        var head = prev

        while(temp1 != nil && temp2 != nil) {
            if temp1!.val < temp2!.val {
                prev?.next = temp1
                prev = prev?.next
                temp1 = temp1?.next
            } else {
                prev?.next = temp2
                prev = prev?.next
                temp2 = temp2?.next
            }
        }

        while(temp1 != nil) {
            prev?.next = temp1
            prev = prev?.next
            temp1 = temp1?.next
        }

        while(temp2 != nil) {
            prev?.next = temp2
            prev = prev?.next
            temp2 = temp2?.next
        }

        return head?.next
    }
}