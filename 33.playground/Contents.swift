class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var a = nums
        return bSearch(beg: 0, end: a.count - 1, target: target, a: &a)
    }

    func bSearch(beg: Int, end: Int, target: Int, a: inout [Int]) -> Int {
        if beg > end {
            return -1
        }

        let mid = beg + (end - beg) / 2
        if a[mid] == target {
            return mid
        } else if a[beg] <= a[mid] {
            if a[mid] < target {
                return bSearch(beg: mid + 1, end: end, target: target, a: &a)
            } else {
                let left = bSearch(beg: beg, end: mid - 1, target: target, a: &a)
                let right = bSearch(beg: mid + 1, end: end, target: target, a: &a)

                if left != -1 {
                    return left
                }

                if right != -1 {
                    return right
                }
            }
        } else {
            if a[mid] > target {
                return bSearch(beg: beg, end: mid - 1, target: target, a: &a)
            } else {
                let left = bSearch(beg: beg, end: mid - 1, target: target, a: &a)
                let right = bSearch(beg: mid + 1, end: end, target: target, a: &a)

                if left != -1 {
                    return left
                }

                if right != -1 {
                    return right
                }
            }
        }

        return -1
    }
}

let s = Solution()
s.search([3, 1], 1)
s.search([1, 3], 3)