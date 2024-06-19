class Solution {
    func minDays(_ bloomDay: [Int], _ m: Int, _ k: Int) -> Int {
        let n = bloomDay.count
        func isPossible(_ d: Int) -> Bool {
            var count = 0, left = k
            for i in 0..<n {
                guard count < m else { break }
                if bloomDay[i] <= d {
                    left -= 1
                    if left == 0 {
                        left = k
                        count += 1
                    }
                } else {
                    left = k
                }
            }
            return count == m
        }

        let maxDays = bloomDay.max()!
        var l = bloomDay.min()!, r = maxDays

        while l <= r {
            let m = (l + r) / 2
            if isPossible(m) {
                r = m - 1
            } else {
                l = m + 1
            }
        }

        return l > maxDays ? -1 : l
    }
}