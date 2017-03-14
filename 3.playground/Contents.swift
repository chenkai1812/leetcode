//: Playground - noun: a place where people can play

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.characters.count == 0 {
            return 0
        }
        
        var i = s.startIndex
        var j = s.index(after: i)
        var maxLen = 1
        var count = Set<Character>()
        
        count.insert(s[i])
        
        while j != s.endIndex {
            while count.index(of: s[j]) != nil {
                count.remove(s[i])
                i = s.index(after: i)
            }
            count.insert(s[j])
            
            maxLen = max(maxLen, s.distance(from: i, to: j) + 1)
            
            j = s.index(after: j)
        }
        
        return maxLen
    }
}

let s = Solution()
s.lengthOfLongestSubstring("abcabcbb")
s.lengthOfLongestSubstring("bbbbb")
s.lengthOfLongestSubstring("pwwkew")