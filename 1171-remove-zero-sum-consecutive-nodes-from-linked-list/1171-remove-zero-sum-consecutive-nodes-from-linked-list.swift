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
    func removeZeroSumSublists(_ head: ListNode?) -> ListNode? {
        var hash:[Int: ListNode] = [:]
        var prefixSum = 0

        let dummy = ListNode(0)
        dummy.next = head
        hash[0] = dummy

        var current = head
        
        while(current != nil) {
            prefixSum += current!.val
            hash[prefixSum] = current
            current = current?.next
        }

        prefixSum = 0
        current = dummy

        while(current != nil) {
            prefixSum += current!.val
            current!.next = hash[prefixSum]?.next
            current = current?.next
        }

        return dummy.next
    }
}