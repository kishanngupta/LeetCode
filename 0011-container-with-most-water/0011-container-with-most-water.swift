class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0
        var j = height.count-1
        var maxi = 0

        while(i<j) {
            let mini = min(height[i], height[j])
            let capacity = (j-i)*mini
            maxi = max(maxi, capacity)
            
            if height[i] < height[j] {
                i+=1
            } else {
                j-=1
            }
        }

        return maxi
    }
}