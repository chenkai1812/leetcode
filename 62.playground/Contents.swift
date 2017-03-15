class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var f = Array(repeating: Array(repeatElement(0, count: n)), count: m)

        for i in 0..<m {
            f[i][0] = 1
        }

        for i in 0..<n {
            f[0][i] = 1
        }

        for i in 1..<m {
            for j in 1..<n {
                f[i][j] = f[i-1][j] + f[i][j-1]
            }
        }

        return f[m-1][n-1]
    }
}

let s = Solution()
s.uniquePaths(3, 7)