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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {

        var root = head
        var count = 1
        var prev: ListNode? = nil

        while(root != nil && count < left) {
            prev = root
            root = root?.next
            count += 1
        }
        /// prev = 1
        var temp: ListNode? = nil
        var reverseHead = root /// 2

        while(root != nil && count <= right) {
            let next = root?.next
            root?.next = temp
            temp = root
            root = next

            count += 1    
        }
        /// root - 5
        /// temp - 4
         
        prev?.next = temp
        reverseHead?.next = root

        if left == 1 {
            return temp
        }

        return head
    }
}