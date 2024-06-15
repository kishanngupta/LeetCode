import Collections

class Solution {
    func findMaximizedCapital(_ k: Int, _ w: Int, _ profits: [Int], _ capital: [Int]) -> Int {
    // Create an array of project tuples (capital, profit)
    var projects = zip(capital, profits).sorted { $0.0 < $1.0 }
    
    // Create a max heap to store profits of available projects
    var maxProfitHeap = Heap<Int>()
    
    var currentCapital = w
    var projectIndex = 0
    
    for _ in 0..<k {
        // Add all affordable projects to the max heap
        while projectIndex < projects.count && projects[projectIndex].0 <= currentCapital {
            maxProfitHeap.insert(projects[projectIndex].1)
            projectIndex += 1
        }
        
        // If no projects are affordable, break early
        if maxProfitHeap.isEmpty {
            break
        }
        
        // Choose the project with the maximum profit from the heap
        let maxProfit = maxProfitHeap.removeMax()
        currentCapital += maxProfit
    }
    
    return currentCapital
}
}