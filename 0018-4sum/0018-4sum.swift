class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var nums = nums.sorted()
        var result: [[Int]] = []

        for i in 0..<nums.count {
            if i != 0 && nums[i] == nums[i-1] { continue }
            for j in i+1..<nums.count {
                if j != i+1 && nums[j] == nums[j-1] { continue }
                var l = j+1
                var k = nums.count-1

                while l<k {
                    var sum = nums[i] + nums[j] + nums[l] + nums[k]
                    if sum == target {
                        result.append([nums[i], nums[j], nums[l], nums[k]])
                        l+=1
                        k-=1

                        while l<k && nums[l] == nums[l-1] { l+=1}
                        while l<k && nums[k] == nums[k+1] { k-=1}
                    } else if sum < target {
                        l+=1
                        while l<k && nums[l] == nums[l-1] { l+=1}
                    } else {
                        k-=1
                        while l<k && nums[k] == nums[k+1] { k-=1}
                    }
                }
            }
        }

        return result
        
    }
}