class Solution {
    func maxDistance(_ p: [Int], _ m: Int) -> Int {
        guard !p.isEmpty else { return 0 }
        let srt = p.sorted()
        var lhs = 0, rhs = srt.last! - srt[0]
        var res = Int.min
        func valid(_ d: Int) -> Bool {
            var cnt = 1, cur = srt[0]
            for i in 1..<p.count where srt[i] - cur >= d {
                cnt += 1
                cur = srt[i]
            }
            return cnt >= m
        }
        while lhs <= rhs {
            let mid = lhs + (rhs - lhs) >> 1
            if valid(mid) {
                res = max(res, mid)
                lhs = mid + 1
            } else {
                rhs = mid - 1
            }
        }
        return res
    }
}