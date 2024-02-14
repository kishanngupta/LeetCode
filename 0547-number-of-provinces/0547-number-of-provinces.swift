class Solution {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        var adjList: [[Int]] = Array(repeating: [], count: isConnected.count)

        for i in 0..<isConnected.count {
            for j in 0..<isConnected[i].count {
                if isConnected[i][j] == 1 && i != j {
                    adjList[i].append(j)
                    adjList[j].append(i)
                }
            }
        }

        var visit: [Int] = Array(repeating: 0, count: isConnected.count)
        var count = 0
        for i in 0..<isConnected.count {
            if visit[i] == 0 {
                count += 1
                dfs(i, adjList, &visit)
            }
        }
        return count
    }

    func dfs(_ i: Int, _ adjList: [[Int]],_ visit: inout [Int]) {
        visit[i] = 1

        for item in adjList[i] {
            if visit[item] == 0 {
                dfs(item, adjList, &visit)
            }
        }
    }
}