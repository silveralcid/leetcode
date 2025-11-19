# Time: O(n^2) — check all pairs
# Space: O(1) — no extra data structures
class SolutionBruteForce:
    def twoSum(self, nums, target):
        for i in range(len(nums)):
            for j in range(i + 1, len(nums)):
                if nums[i] + nums[j] == target:
                    return [i, j]


# Time: O(n) — single pass using hash map
# Space: O(n) — storing seen values
class SolutionOptimal:
    def twoSum(self, nums, target):
        seen = {}
        for i, num in enumerate(nums):
            comp = target - num
            if comp in seen:
                return [seen[comp], i]
            seen[num] = i
