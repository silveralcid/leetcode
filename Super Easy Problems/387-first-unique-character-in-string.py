# Time O(n^2)
# Space O(1)

class Solution:
    def firstUniqChar(self, s: str) -> int:
        for i in range(len(s)):
            char = s[i]
            s.count(char)
            if s.count(char) == 1:
                return i
        return -1
