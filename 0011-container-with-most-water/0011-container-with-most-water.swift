final class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0
        var j = height.count-1
        var maxi = 0

        while i<j {
            if height[i] < height[j] {
                let water = (j-i)*height[i]
                maxi = max(water, maxi)
                
                i+=1
            } else {
                let water = (j-i)*height[j]
                maxi = max(water, maxi)
                j-=1
            }
        }
        
        return maxi
    }
}