class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums)
        var maxi = 0

        for item in set {
            var count = 1
            if !set.contains(item-1) {    
                while(set.contains(item+count)) {
                    count+=1
                }
            }
            maxi = max(maxi, count)
        }
        return maxi
    }
}