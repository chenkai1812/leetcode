// Sort
class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let a = nums.sorted()
        var sum = 0
        var flag = true
        
        
        for i in 0..<a.count {
            var j = i + 1
            var k = a.count - 1
            
            while j < k {
                let t = a[i] + a[j] + a[k]
                if flag || abs(sum - target) > abs(t - target) {
                    sum = t
                    flag = false
                }
                
                if t > target {
                    k -= 1
                } else if t < target {
                    j += 1
                } else {
                    return sum
                }
            }
        }
        
        return sum
    }
}

let s = Solution()

s.threeSumClosest([-1, 2, 1, -4], 1)
s.threeSumClosest([1, 1, 1, 1], -100)
