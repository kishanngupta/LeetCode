class Solution {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        var adjList: [[Int]] = Array(repeating: [], count: isConnected.count+1)
        for i in 0..<isConnected.count {
            for j in 0..<isConnected[0].count {
                if i != j && isConnected[i][j] == 1 {
                    adjList[i+1].append(j+1)
                }
            }
        }

        var visited: [Bool] = Array(repeating: false, count: isConnected.count+1)
        var count = 0
        ///Used in case of BFS traverse
        var queue: [Int] = []

        for i in 1...isConnected.count {
            if visited[i] == false {
                count += 1
                // traverseDFS(i)
                traverseBFS(i)
            }
        }

        func traverseBFS(_ root: Int) {
            queue.append(root)

            while !queue.isEmpty {
                let node = queue.removeFirst()
                for child in adjList[node] {
                    if visited[child] == false {
                        visited[child] = true
                        queue.append(child)
                    }
                }
            }
        }

        func traverseDFS(_ root: Int) {
            visited[root] = true
            for child in adjList[root] where visited[child] == false {
                traverseDFS(child)
            }
        }

        return count
    }
}