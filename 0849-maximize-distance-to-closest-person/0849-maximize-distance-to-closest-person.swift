class Solution {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        var maxi = Int.max
        var count = 1
        var left = 0
        var right = seats.count-1

        for i in 0..<seats.count {
            if seats[i] == 1 {
                maxi = i
                left = i
                break
            }
        }

        for i in (0..<seats.count).reversed() {
            if seats[i] == 1 {
                maxi = max(maxi, seats.count-i-1)
                right = i
                break
            }
        }
        if left < right {
            for i in left..<right {

                if seats[i] == 1 {
                    let result = Int(count/2)
                    maxi = max(maxi, result)
                    count = 1
                } else {
                    count += 1
                    let result = Int(count/2)
                    maxi = max(maxi, result)
                }                
            }
        }
        return maxi
    }
}