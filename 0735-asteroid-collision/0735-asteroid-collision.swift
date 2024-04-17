class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack: [Int] = []

        for num in asteroids {
            var num = num

            while(!stack.isEmpty && num < 0 && stack.last! > 0) {
                let diff = num + stack.last!
                if diff < 0 {
                    stack.removeLast()
                } else if diff > 0 {
                    num = 0
                } else {
                    num = 0
                    stack.removeLast()
                }
            }

            if num != 0 {
                stack.append(num)
            }
        }

        return stack
    }
}