class Solution {
    func pivotInteger(_ n: Int) -> Int {
        if n == 1 { return 1 }

        var nums = Array(1...n)
        var i = 0
        var j = nums.count-1
        var prefix = 0
        var suffix = 0

        while(i<j) {
            if prefix < suffix {
                prefix += nums[i]
                i+=1
            } else {
                suffix += nums[j]
                j-=1
            }
        }

        return prefix == suffix ? i+1 : -1
    }
}