
class RecentCounter {
    var list: [Int]

    init() {
        list = []
    }
    
    func ping(_ t: Int) -> Int {
        list.append(t)

        while !list.isEmpty && list.first! < (t-3000) {
            list.removeFirst()
        }
        return list.count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */