class Solution {
    func decodeString(_ s: String) -> String {        
        var stack: [String] = []
        let numberSet: Set<String> = ["1","2","3","4","5","6","7","8","9","0"]

        for char in s {
            if char == "]" {
                var temp = ""
                var count = ""
                while stack.last! != "[" {
                    let last = stack.removeLast()
                    temp = last + temp
                }
                stack.removeLast()

                while !stack.isEmpty && numberSet.contains(stack.last!) {
                    count = stack.removeLast() + count
                }

                for _ in 0..<Int(count)! {
                    stack.append(temp)
                }
            } else {
                stack.append("\(char)")
            }
        }

        return stack.joined()
    }
}