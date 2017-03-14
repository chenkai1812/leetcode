class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var a = nums

        let leftIndex = bSearch(beg: 0, end: a.count - 1, key: target, a: &a, findLeft: true)
        let rightIndex = bSearch(beg: 0, end: a.count - 1, key: target, a: &a, findLeft: false)

        return [leftIndex, rightIndex]
    }

    func bSearch(beg: Int, end: Int, key: Int, a: inout [Int], findLeft: Bool) -> Int {
        if (beg > end) {
            return -1
        }

        let mid = beg + (end - beg) / 2

        if a[mid] == key {
            var index = 0
            if findLeft {
                index = bSearch(beg: beg, end: mid - 1, key: key, a: &a, findLeft: findLeft)
            } else {
                index = bSearch(beg: mid + 1, end: end, key: key, a: &a, findLeft: findLeft)
            }

            return index == -1 ? mid : index
        } else if a[mid] < key {
            return bSearch(beg: mid + 1, end: end, key: key, a: &a, findLeft: findLeft)
        } else {
            return bSearch(beg: beg, end: mid - 1, key: key, a: &a, findLeft: findLeft)
        }
    }
}

let s = Solution()
s.searchRange([5, 7, 7, 8, 8, 10], 8)
s.searchRange([], 0)
s.searchRange([1,2,3,3,3,3,4,5,9], 3)