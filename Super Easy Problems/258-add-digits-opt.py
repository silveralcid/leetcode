# use digital root formula from number theory
# O(1) time, O(1) space

class Solution:
    def addDigits(self, num: int) -> int:
        if num == 0:
            return 0
        return 1 + (num - 1) % 9