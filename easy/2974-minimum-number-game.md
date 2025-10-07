## Task
You are given a 0-indexed integer array `nums` of even length. Alice and Bob play a game with the following rules:

1. Every round:
   - Alice removes the **minimum** element from `nums`.
   - Then Bob removes the next **minimum** element.
2. After both remove their elements:
   - Bob appends **his** removed element to `arr`.
   - Then Alice appends **hers**.
3. The game continues until `nums` becomes empty.

Return the resulting array `arr`.

### Example 1
Input: `nums = [5,4,2,3]`  
Output: `[3,2,5,4]`  
Explanation:  
- Round 1: Alice removes 2, Bob removes 3 → `arr = [3,2]`  
- Round 2: Alice removes 4, Bob removes 5 → `arr = [3,2,5,4]`

### Example 2
Input: `nums = [2,5]`  
Output: `[5,2]`

### Code
def numberGame(nums):
    nums.sort()
    arr = []
    for i in range(0, len(nums), 2):
        arr.append(nums[i + 1])  # Bob appends first
        arr.append(nums[i])      # Alice appends next
    return arr

# Category
Arrays | Simulation | Fundamentals
