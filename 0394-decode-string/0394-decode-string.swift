class Solution {
    func decodeString(_ s: String) -> String {
        let number = ["0","1","2","3","4","5","6","7","8","9"]
        var stack: [String] = []
        var result = ""

        for char in s {

            if char == "]" {
                var str = ""
                var count = ""
                while stack.last! != "[" {
                    str = (stack.removeLast()) + str
                }
                stack.removeLast()
                while !stack.isEmpty && number.contains(stack.last!) {
                    count = (stack.removeLast()) + count
                }
                if !count.isEmpty {
                    for _ in 0..<Int(count)! {
                        stack.append(str)
                    }
                }
            } else {
                stack.append(String(char))
            }
        }

        return stack.reduce("",+)
    }
}