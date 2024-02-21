class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var nums = nums.sorted()
        var result: [[Int]] = []

        for i in 0..<nums.count-2 {
            ///i should be greater than 0
            /// because it is being compared with previous number
            /// to make sure that number is distinct
            if i>0, nums[i] == nums[i-1] { continue }
            var j = i+1
            var k = nums.count-1
            while(j<k) {
                let total = nums[i] + nums[j] + nums[k]
                if total == 0 {
                    let list = [nums[i], nums[j], nums[k]]
                    result.append(list)
                    j+=1
                    k-=1
                    /// check if j and k previous number are not same
                    while(j<k && nums[j] == nums[j-1]) { j+=1 }
                    /// note in case K, operation is opposite
                    /// as it moving right to left
                    while(j<k && nums[k] == nums[k+1]) { k-=1 }

                } else if total < 0 {
                    j+=1
                } else {
                    k-=1
                }
            }
        }


        return result
    }
}