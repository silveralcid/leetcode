# Two Sum

## Problem

Given an integer array `nums` and an integer `target`, return the **indices** of the two numbers that add up to `target`. You may not use the same element twice, and exactly one valid answer exists.

## Examples

**Example 1**
Input: `nums = [2,7,11,15]`, `target = 9`
Output: `[0,1]`
Reason: `2 + 7 = 9`

**Example 2**
Input: `nums = [3,2,4]`, `target = 6`
Output: `[1,2]`

**Example 3**
Input: `nums = [3,3]`, `target = 6`
Output: `[0,1]`

## Constraints

* `2 <= nums.length <= 10^4`
* `-10^9 <= nums[i], target <= 10^9`
* Only one valid solution exists

## Pattern

This is a **Hash Map** problem. Key idea: track previously seen numbers and check if the complement exists.

## Approaches

### 1. Brute Force (O(n²))

* Check all pairs
* Too slow for large inputs

### 2. Optimal Hash Map (O(n))

* Create a map `{value → index}`
* For each `num`, compute `complement = target - num`
* If complement exists in map → return indices
* Otherwise store current number in map

### Python Solution (O(n))

```python
def twoSum(nums, target):
    seen = {}
    for i, num in enumerate(nums):
        comp = target - num
        if comp in seen:
            return [seen[comp], i]
        seen[num] = i
```

## Notes

* Works in linear time due to O(1) average hash lookup
* Order of returned indices does not matter
* Duplicate values are handled naturally by storing latest index


# Journal

## 11/19/2025

* Journal entry
