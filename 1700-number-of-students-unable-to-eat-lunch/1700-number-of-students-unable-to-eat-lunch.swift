class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var ctrs: [Int] = [0, 0]
        // count zeros and ones in students
        ctrs[1] = students.reduce(0, +)
        ctrs[0] = students.count - ctrs[1]
        // go over the sandwiches queue
        for s in sandwiches {
            if ctrs[s] == 0 {
                break  // stop if there is no student of the kind left
            }
            ctrs[s] -= 1  // decrement number of students of the kind
        }
        // return number of students left
        return max(ctrs[0], ctrs[1])
    }
}