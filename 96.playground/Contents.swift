class Solution {
    func numTrees(_ n: Int) -> Int {
        if n < 0 {
            return 0
        }

        if n == 0 || n == 1 {
            return 1
        }

        var f: [Int] = Array(repeating: 0, count: n + 1)

        f[0] = 1
        f[1] = 1

        for i in 2...n {
            for j in 0..<i {
                f[i] += f[j] * f[i-j-1]
            }
        }

        return f[n]
    }
}

let s = Solution()
s.numTrees(3)