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
    func mergeInBetween(_ list1: ListNode?, _ a: Int, _ b: Int, _ list2: ListNode?) -> ListNode? {
        var head = list1
        var index = 0

        while(index < a-1) {
            head = head?.next
            index += 1
        }

        var temp = head?.next
        head?.next = list2

        while(head?.next != nil) {
            head = head?.next
        }
        index = 0
        while(index < (b-a)) {
            temp = temp?.next
            index += 1
        }
        head?.next = temp?.next

        
        return list1
    }
}