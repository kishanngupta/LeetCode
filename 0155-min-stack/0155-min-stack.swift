
class MinStack {
    var stack: [Int] 
    var minStack: [Int]

    init() {
        stack = []
        minStack = []
    }
    
    func push(_ val: Int) {
        stack.append(val)

        if minStack.isEmpty {
            minStack.append(val)
        } else {
            minStack.append( min(minStack.last!, val) )
        }
    }
    
    func pop() {
        if !stack.isEmpty {
            stack.removeLast()
            minStack.removeLast()
        }
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return minStack.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */