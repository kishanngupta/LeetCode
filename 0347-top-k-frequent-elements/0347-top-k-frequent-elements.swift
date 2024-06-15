import Collections

struct Pair: Comparable {
    var val: Int
    var freq: Int

    init(_ v: Int,_ f: Int) {
        val = v
        freq = f
    }

    static func <(_ lhs: Pair,_ rhs: Pair) -> Bool {
        if lhs.freq < rhs.freq {
            return true
        } else if lhs.freq > rhs.freq {
            return false
        } else {
            return lhs.val < rhs.val
        }
    }

    static func ==(_ lhs: Pair,_ rhs: Pair) -> Bool {
        return lhs.freq == rhs.freq
    }
}

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var hash: [Int: Int] = [:]
        var heap: Heap<Pair> = []
        var result: [Int] = []

        for num in nums {
            hash[num, default: 0] += 1
        }

        for (key, freq) in hash {
            let pair = Pair(key, freq)
            heap.insert(pair)

            if heap.count > k {
                heap.removeMin()
            }
        }

        while !heap.isEmpty {
            let element = heap.removeMax().val
            result.append(element)
        }

        return result
    }
}