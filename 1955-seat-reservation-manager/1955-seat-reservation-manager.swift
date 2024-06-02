import Collections

final class SeatManager {
    var heap: Heap<Int> = []

    init(_ n: Int) {
        for i in 1...n {
            heap.insert(i)
        }
    }
    
    func reserve() -> Int {
        return heap.removeMin()
    }
    
    func unreserve(_ seatNumber: Int) {
        heap.insert(seatNumber)
    }
}

/**
 * Your SeatManager object will be instantiated and called as such:
 * let obj = SeatManager(n)
 * let ret_1: Int = obj.reserve()
 * obj.unreserve(seatNumber)
 */