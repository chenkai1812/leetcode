// O(n)
class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return 0
        }

        for i in 0..<nums.count {
            if i == 0 {
                if nums[i] > nums[i+1] {
                    return i
                }
            } else if i == nums.count - 1 {
                if nums[i-1] < nums[i] {
                    return i
                }
            } else {
                if nums[i-1] < nums[i] && nums[i] > nums[i+1] {
                    return i
                }
            }
        }

        return -1
    }
}

// O(logn)
class Solution2 {
    func findPeakElement(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return 0
        }

        var a = nums
        return bst(beg: 0, end: nums.count - 1, a: &a)
    }

    func bst(beg: Int, end: Int, a: inout [Int]) -> Int {
        if (beg >= end) {
            return beg
        }

        let mid = beg + (end - beg) / 2
        let aLeft = mid - 1 < 0 ? Int.min : a[mid - 1]
        let aRight = mid + 1 >= a.count ? Int.min : a[mid + 1]

        if (aLeft < a[mid] && a[mid] > aRight) {
            return mid
        } else if a[mid] > aLeft {
            return bst(beg: mid + 1, end: end, a: &a)
        } else {
            return bst(beg: beg, end: mid - 1, a: &a)
        }
    }
}

let s = Solution2()
s.findPeakElement([1, 2, 3, 1])