class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var element1: Int? = nil
        var element2: Int? = nil
        var count1 = 0
        var count2 = 0

        for num in nums {
            if count1 == 0 && element2 != num {
                element1 = num
                count1 = 1
            } else if count2 == 0 && element1 != num {
                element2 = num
                count2 = 1
            } else if element1 == num {
                count1 += 1
            } else if element2 == num {
                count2 += 1
            } else {
                count1 -= 1
                count2 -= 1
            }
        }

        count1 = 0
        count2 = 0

        for num in nums {
            if element1 == num {
                count1 += 1
            } else if element2 == num {
                count2 += 1
            }
        }

        print(count1, count2, element1, element2)

        var result: [Int] = []
        if count1 > nums.count/3 {
            result.append(element1!)
        }
        if count2 > nums.count/3 {
            result.append(element2!)
        }
        return result
    }
}