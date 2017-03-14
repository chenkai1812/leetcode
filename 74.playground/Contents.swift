class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.count == 0 {
            return false
        }

        var a = matrix
        let y = a.count
        let x = a[0].count
        return bSearch(beg: 0, end: x * y - 1, x: x, y: y, key: target, a: &a)
    }

    func bSearch(beg: Int, end: Int, x: Int, y: Int, key: Int, a: inout [[Int]]) -> Bool {
        if beg > end {
            return false
        }

        let mid = beg + (end - beg) / 2
        let v = getValue(index: mid, x: x, y: y, a: &a)
        if v == key {
            return true
        } else if v < key {
            return bSearch(beg: mid + 1, end: end, x: x, y: y, key: key, a: &a)
        } else {
            return bSearch(beg: 0, end: mid - 1, x: x, y: y, key: key, a: &a)
        }
    }

    func getValue(index: Int, x: Int, y: Int, a: inout [[Int]]) -> Int {
        let first = index / x
        let second = index - first * x

        return a[first][second]
    }
}

let s = Solution()
s.searchMatrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 50]], 51)