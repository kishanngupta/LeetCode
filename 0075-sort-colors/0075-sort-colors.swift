class Solution {
    func sortColors(_ nums: inout [Int]) {
        var i = 0
        var j = 0
        var k = nums.count-1

        while j<=k{
            if nums[j] == 0 {
                nums.swapAt(i, j)
                i+=1
                j+=1
            } else if nums[j] == 1 {
                j+=1
            } else {
                nums.swapAt(j,k)
                k-=1
            }   
        }
    }
}