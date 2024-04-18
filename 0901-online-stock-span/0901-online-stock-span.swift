
class StockSpanner {
    var stack: [(Int,Int)] /// price,span

    init() {
        stack = []
    }
    
    func next(_ price: Int) -> Int {
        var span = 1
        while !stack.isEmpty && stack.last!.0 <= price {
            let last = stack.removeLast()
            span += last.1
        } 
        stack.append((price, span))
        return span
    }
}

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let ret_1: Int = obj.next(price)
 */