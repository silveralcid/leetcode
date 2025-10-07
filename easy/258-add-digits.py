# Time: O(log n)
# Space: O(log n)
class Solution:
    def addDigits(self, num: int) -> int:
        while num >= 10:
            digits = []
            for d in str(num):
                digits.append(int(d))
            num = sum(digits)
        return num