//: Playground - noun: a place where people can play

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        
        if strs.count == 1 {
            return strs.first!
        }
        
        let count = strs.count
        if let first = strs.first {
            for i in 0..<first.characters.count {
                let index = first.index(first.startIndex, offsetBy: i)
                for j in 1..<count {
                    let str = strs[j]
                    var flag = true
                    if i < str.characters.count {
                        let strIndex = str.index(str.startIndex, offsetBy: i)
                        if str[strIndex] != first[index] {
                            flag = false
                        }
                    } else {
                        flag = false
                    }
                    if !flag {
                        if i == 0 {
                            return ""
                        } else {
                            let toIndex = first.index(first.startIndex, offsetBy: i - 1)
                            return first[first.startIndex...toIndex]
                        }
                    }
                }
            }
        }
        
        return strs.first!
    }
}

let s = Solution()
s.longestCommonPrefix(["a","cac","bcba","b","ca"])
