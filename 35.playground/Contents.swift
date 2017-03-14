class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return 0
        }

        var a = nums
        let index = bSearch(beg: 0, end: nums.count - 1, key: target, a: &a)

        return index
    }

    func bSearch(beg: Int, end: Int, key: Int, a: inout [Int]) -> Int {
        if beg > end {
            return beg
        }

        let mid = beg + (end - beg) / 2

        if a[mid] == key {
            return mid
        } else if a[mid] < key {
            return bSearch(beg: mid + 1, end: end, key: key, a: &a)
        } else {
            return bSearch(beg: beg, end: mid - 1, key: key, a: &a)
        }
    }
}

let s = Solution()
s.searchInsert([1,3,5,6], 5)
s.searchInsert([1, 3, 5, 6], 2)
s.searchInsert([1, 3, 5, 6], 7)
s.searchInsert([1, 3, 5, 6], 0)