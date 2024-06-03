class Solution {
    func trap(_ height: [Int]) -> Int {
        var water = 0
        var i = 0
        var j = height.count-1
        var maxLeft = 0
        var maxRight = 0

        while i<j {
            if height[i] < height[j] {
                maxLeft = max(height[i], maxLeft)
                water += height[i]-maxLeft
                i += 1
            } else {
                maxRight = max(maxRight, height[j])
                water += height[j]-maxRight
                j -= 1
            }
        }

        return -water
    }
}