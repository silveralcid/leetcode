# Time: O(n)
# Space: O(1)

from collections import Counter

class Solution:
    def firstUniqChar(self, s: str) -> int:
        counts = Counter(s)
        for i, char in enumerate(s):
            if counts[char] == 1:
                return i
        return -1