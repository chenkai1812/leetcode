//: Playground - noun: a place where people can play

// 28. Implement strStr()
// https://leetcode.com/problems/implement-strstr/?tab=Description

// String
// Loop Search

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if haystack.characters.count < needle.characters.count {
            return -1
        }
        
        if haystack.characters.count == 0 && needle.characters.count == 0 {
            return 0
        }
        
        for i in haystack.characters.indices {
            var indexHaystack = i
            var indexNeedle = needle.startIndex
            
            while indexHaystack != haystack.endIndex && indexNeedle != needle.endIndex {
                if haystack[indexHaystack] != needle[indexNeedle] {
                    break
                }
                indexHaystack = haystack.index(after: indexHaystack)
                indexNeedle = needle.index(after: indexNeedle)
            }
            
            if indexNeedle == needle.endIndex {
                return haystack.distance(from: haystack.startIndex, to: i)
            }
            
            if indexHaystack == haystack.endIndex {
                return -1
            }
        }
        
        return -1
    }
}

let s = Solution()
s.strStr("abc", "a")
s.strStr("abc", "b")
s.strStr("abc", "d")
s.strStr("abc", "")
s.strStr("", "a")
s.strStr("abc", "bc")
s.strStr("abc", "bd")
s.strStr("ab", "abc")
s.strStr("", "")
