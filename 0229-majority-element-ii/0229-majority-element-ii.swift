class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var count1 = 1
        var count2 = 0
        var element1: Int? = nums.first!
        var element2: Int? = nil
        var result: [Int] = []
        
        for item in nums.dropFirst() {
            if count1 == 0 && item != element2 {
                element1 = item
                count1 += 1
            } else if count2 == 0 && item != element1 {
                element2 = item
                count2 += 1
            } else if item == element1 {
                count1 += 1
            } else if item == element2 {
                count2 += 1
            } else {
                count1 -= 1
                count2 -= 1
            }
        }
        
        count1 = 0
        count2 = 0
        
        for item in nums {
            if item == element1 {
                count1 += 1
            } else if item == element2 {
                count2 += 1
            }
        }
        
        if (count1 > nums.count/3) {
            result.append(element1!)
        }
        
        if count2 > nums.count/3 {
            result.append(element2!)
        }
        return result
    }
}