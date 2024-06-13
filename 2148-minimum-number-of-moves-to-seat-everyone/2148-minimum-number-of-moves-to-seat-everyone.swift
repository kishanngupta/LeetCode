class Solution {
    func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
        var seats = seats.sorted()
        var students = students.sorted()
        var steps = 0

        for i in 0..<students.count {
            steps += abs(students[i]-seats[i])
        }

        return steps
    }
}