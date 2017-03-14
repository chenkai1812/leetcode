class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var a = nums
        return bSearch(beg: 0, end: nums.count - 1, a: &a)
    }

    func bSearch(beg: Int, end: Int, a: inout [Int]) -> Int {
        if beg > end {
            return Int.max
        }

        if beg == end {
            return a[beg]
        }

        if beg + 1 == end {
            return min(a[beg], a[end])
        }

        let mid = beg + (end - beg) / 2
        if a[beg] < a[mid] {
            let right = bSearch(beg: mid + 1, end: end, a: &a)
            return min(a[beg], right)
        } else {
            let left = bSearch(beg: beg, end: mid - 1, a: &a)
            return min(a[mid], left)
        }
    }
}

let s = Solution()
s.findMin([4, 5, 6, 7, 0, 1, 2])
s.findMin([2, 1])
