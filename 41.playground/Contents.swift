class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var i = 0
        var a = nums
        while i < a.count {
            let j = i
            while a[j] != j + 1 {
                if a[j] <= 0 {
                    break
                }
                
                if a[j] > a.count {
                    break
                }
                
                let k = a[j] - 1
                if a[k] == k + 1 {
                    break
                } else {
                    let t = a[k]
                    a[k] = a[j]
                    a[j] = t
                }
            }
            i += 1
        }
        
        for i in 0..<a.count {
            if i + 1 != a[i] {
                return i + 1
            }
        }
        
        return a.count + 1
    }
}

let s = Solution()
s.firstMissingPositive([3,4,-1, 1])
s.firstMissingPositive([1,2,0])