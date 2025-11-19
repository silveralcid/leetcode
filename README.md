# LeetCode

## Table of Contents

- [Repository Overview](#repository-overview)
- [Intended Usage](#intended-usage)
- [File Naming Convention](#file-naming-convention)
- [Example Usage](#example-usage-rootnewps1)
- [Python Solution Structure](#python-solution-structure)
- [LeetCode Commandments](#leetcode-commandments)
- [Problem-Solving Procedure](#problem-solving-procedure)
  - [1. Restate the problem](#1-restate-the-problem)
  - [2. Identify inputs and outputs](#2-identify-inputs-and-outputs)
  - [3. Work through examples manually](#3-work-through-examples-manually)
  - [4. Identify patterns or rules](#4-identify-patterns-or-rules)
  - [5. Choose the algorithmic structure](#5-choose-the-algorithmic-structure)
  - [6. Translate pseudocode to code](#6-translate-pseudocode-to-code)
  - [7. Test the implementation](#7-test-the-implementation)
  - [8. Explore alternatives](#8-explore-alternatives)
  - [9. Analyze complexity](#9-analyze-complexity)
  - [10. Reflect and reinforce](#10-reflect-and-reinforce)
- [Resources](#resources)
- [Recommended Problems](#recommended-problems)
  - [Hash](#hash)
  - [Two Pointers](#two-pointers)
  - [Sliding Window](#sliding-window)
  - [Binary Search](#binary-search)
  - [Greedy](#greedy)
  - [Sorting](#sorting)
  - [Heaps](#heaps)
  - [Monotonic Stack](#monotonic-stack)
  - [BFS](#bfs)
  - [DFS](#dfs)
  - [Dynamic Programming](#dynamic-programming)
  - [Backtracking](#backtracking)
- [Other Tips](#other-tips)


## Repository Overview

This template repository is created to be used to organize LeetCode and data-structures/algorithms practice, organized into **numbered pattern folders** that follow a recommended study progression. Each top-level directory represents a core problem pattern such as Hash, Two Pointers, Sliding Window, BFS, DP, and more.

Inside each pattern directory:

- **learning/** — where all new problems begin  
- **practice/** — spaced-repetition review folders (**One Day**, **One Week**, **One Month**)  
- **easy/**, **medium/**, **hard/** — mastered problems organized by difficulty  

The numbering of folders (e.g., `2 Hash`, `3 Two Pointers`, `4 Sliding Window`, etc.) indicates a suggested priority order for learning each pattern.

### Intended Usage

Start every new problem in the **learning/** folder. As your understanding improves, move the problem into one of the practice folders—**One Day**, **One Week**, or **One Month**—depending on your confidence level. Review the problems according to their folder interval. Once you consistently solve a problem without assistance, move it into the appropriate **easy**, **medium**, or **hard** folder under its pattern to mark it as mastered.

## File Naming Convention

```
<number>-<simplified-title>.py
<number>-<simplified-title>.md
```

Examples:

```
258-add-digits.py
001-two-sum.md
```

## Example Usage (root/new.ps1)

```
# Create problem files at repo root
pwsh .\new.ps1 -name "258-add-digits"

# Create problem files inside a specific pattern folder
pwsh .\new.ps1 -name "001-two-sum" -folder "hash"
```

## Python Solution Structure

Each problem’s Python file should contain all solution variants in one file, using separate classes to keep approaches cleanly divided.

Example:

```python
# Iterative digit-summing approach
# Time: O(log n)
# Space: O(log n)
class Solution:
    def addDigits(self, num: int) -> int:
        while num >= 10:
            total = 0
            for d in str(num):
                total += int(d)
            num = total
        return num

# Digital root formula (number theory)
# Time: O(1)
# Space: O(1)
class OptimalSolution:
    def addDigits(self, num: int) -> int:
        if num == 0:
            return 0
        return 1 + (num - 1) % 9
```
## LeetCode Commandments
1. **Limit time on a stuck problem** — Don’t spend more than 15–20 minutes completely stuck; after a real attempt, switch to learning the concept.
2. **Analyze constraints first** — Input size and limits indicate the intended algorithm and whether brute force is viable.
3. **Use examples as a guide** — Expand the given examples and create additional ones to uncover hidden patterns.
4. **Solve the simpler version first** — Reduce the problem to its core; scale up only after the logic is clear.
5. **Optimize in phases** — Start with correctness, then improve performance; don’t force an optimal solution immediately.
6. **Explain your thinking** — Clear reasoning exposes gaps and aligns with interview expectations.
7. **Recognize patterns** — Label each solved problem by pattern (hashing, two pointers, DP, BFS, etc.) to strengthen intuition.
8. **Review after solving** — Study official or community solutions and extract at least one new insight.
9. **Re-solve deliberately** — Revisit problems after 1 day, 1 week, and 1 month to reinforce long-term retention.
10. **Prioritize mastery over volume** — Deep understanding of fewer problems leads to stronger overall performance.

## Problem-Solving Procedure

### 1. Restate the problem

Summarize the task in one or two sentences. Clarify what must be computed and under what conditions.

### 2. Identify inputs and outputs

* Determine input types, ranges, and constraints
* Determine the output type and exact expected behavior
* Note edge conditions such as empty input, duplicates, or negative values

### 3. Work through examples manually

* Simulate each provided example step by step
* Create at least one additional example
* Confirm you understand how the correct output is produced

### 4. Identify patterns or rules

* Look for repeated behavior in examples
* Identify key relationships
* Map the problem to known patterns when possible

### 5. Choose the algorithmic structure

* Decide the high-level strategy
* Write clear pseudocode
* Ensure the pseudocode aligns with observed rules

### 6. Translate pseudocode to code

* Implement step by step in Python
* Keep implementation simple
* Use descriptive variable names

### 7. Test the implementation

* Test all provided examples
* Add edge cases
* Verify correctness before optimizing

### 8. Explore alternatives

* Compare different viable approaches
* Note trade-offs and when each alternative is preferred

### 9. Analyze complexity

* Identify time complexity
* Identify space complexity
* Ensure the solution meets problem constraints

### 10. Reflect and reinforce

* Summarize the pattern used
* Note any confusions and how they were resolved
* Consider adding the concept to spaced-repetition practice

## Resources

* [LeetCode Patterns - Seanprashad](https://seanprashad.com/leetcode-patterns/)
* [LeetCode Patterns Repository - Seanprashad](https://github.com/seanprashad/leetcode-patterns)
* [Beginner's Guide - LeetCode](https://leetcode.com/explore/featured/card/the-leetcode-beginners-guide/)
* [Top Interview Questions - LeetCode](https://leetcode.com/explore/interview/card/top-interview-questions-easy/)
* [NeetCode 150](https://leetcode.com/problem-list/plakya4j/)

## Recommended Problems

### Hash

**Easy – Learning**

* [1. Two Sum](https://leetcode.com/problems/two-sum) — core intro to hash maps for constant-time lookups
* [242. Valid Anagram](https://leetcode.com/problems/valid-anagram) — simple frequency counting pattern
* [349. Intersection of Two Arrays](https://leetcode.com/problems/intersection-of-two-arrays) — foundational use of hash sets

**Medium – Practice**

* [49. Group Anagrams](https://leetcode.com/problems/group-anagrams) — canonical grouping-by-signature hashmap problem
* [560. Subarray Sum Equals K](https://leetcode.com/problems/subarray-sum-equals-k) — teaches prefix sum + hashmap combo

**Hard – Mastery**

* [146. LRU Cache](https://leetcode.com/problems/lru-cache) — classic design problem using hashmap + linked list

### Two Pointers

**Easy – Learning**

* [125. Valid Palindrome](https://leetcode.com/problems/valid-palindrome) — clean beginner two-pointer pattern
* [344. Reverse String](https://leetcode.com/problems/reverse-string) — left/right pointer fundamentals
* [88. Merge Sorted Array](https://leetcode.com/problems/merge-sorted-array) — backward merging with dual pointers

**Medium – Practice**

* [15. 3Sum](https://leetcode.com/problems/3sum) — standard sorted-array two-pointer interview problem
* [19. Remove Nth Node From End of List](https://leetcode.com/problems/remove-nth-node-from-end-of-list) — moving window pointers on linked list

**Hard – Mastery**

* [42. Trapping Rain Water](https://leetcode.com/problems/trapping-rain-water) — optimized two-pointer solution to a common hard problem

### Sliding Window

**Easy – Learning**

* [121. Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock) — introduces shrinking/expanding window ideas
* [643. Maximum Average Subarray I](https://leetcode.com/problems/maximum-average-subarray-i) — fixed-window basics
* [3. Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters) — best beginner variable-window problem

**Medium – Practice**

* [209. Minimum Size Subarray Sum](https://leetcode.com/problems/minimum-size-subarray-sum) — shrinking window optimization
* [567. Permutation in String](https://leetcode.com/problems/permutation-in-string) — sliding window with character counts

**Hard – Mastery**

* [76. Minimum Window Substring](https://leetcode.com/problems/minimum-window-substring) — most important hard window problem

### Binary Search

**Easy – Learning**

* [704. Binary Search](https://leetcode.com/problems/binary-search) — essential template
* [35. Search Insert Position](https://leetcode.com/problems/search-insert-position) — boundary logic practice
* [69. Sqrt(x)](https://leetcode.com/problems/sqrtx) — binary search on answer space

**Medium – Practice**

* [33. Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array) — heavily repeated interview problem
* [34. Find First and Last Position of Element](https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array) — teaches binary search for boundaries

**Hard – Mastery**

* [4. Median of Two Sorted Arrays](https://leetcode.com/problems/median-of-two-sorted-arrays) — gold-standard advanced binary search problem

### Greedy

**Easy – Learning**

* [455. Assign Cookies](https://leetcode.com/problems/assign-cookies) — introduces greedy choice property
* [860. Lemonade Change](https://leetcode.com/problems/lemonade-change) — straightforward greedy bookkeeping
* [53. Maximum Subarray](https://leetcode.com/problems/maximum-subarray) — Kadane’s algorithm, essential for interviews

**Medium – Practice**

* [55. Jump Game](https://leetcode.com/problems/jump-game) — common real interview greedy
* [134. Gas Station](https://leetcode.com/problems/gas-station) — teaches global vs local greedy reasoning

**Hard – Mastery**

* [135. Candy](https://leetcode.com/problems/candy) — non-trivial two-pass greedy construction

### Sorting

**Easy – Learning**

* [75. Sort Colors](https://leetcode.com/problems/sort-colors) — Dutch National Flag, common interview pattern
* [88. Merge Sorted Array](https://leetcode.com/problems/merge-sorted-array) — reinforces sorting fundamentals
* [1122. Relative Sort Array](https://leetcode.com/problems/relative-sort-array) — frequency-based sorting approach

**Medium – Practice**

* [347. Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements) — sorting/heap hybrid; heavily used
* [451. Sort Characters by Frequency](https://leetcode.com/problems/sort-characters-by-frequency) — key frequency bucket-sort idea

**Hard – Mastery**

* [179. Largest Number](https://leetcode.com/problems/largest-number) — comparator logic and custom sorting

### Heaps

**Easy – Learning**

* [1046. Last Stone Weight](https://leetcode.com/problems/last-stone-weight) — simplest intro to priority queue
* [703. Kth Largest Element in a Stream](https://leetcode.com/problems/kth-largest-element-in-a-stream) — fixed-size heap pattern
* [1167. Minimum Cost to Connect Sticks](https://leetcode.com/problems/minimum-cost-to-connect-sticks) — Huffman-style greedy with heap

**Medium – Practice**

* [215. Kth Largest Element in an Array](https://leetcode.com/problems/kth-largest-element-in-an-array) — top 5 most common heap problem
* [973. K Closest Points to Origin](https://leetcode.com/problems/k-closest-points-to-origin) — common geometric heap question

**Hard – Mastery**

* [23. Merge k Sorted Lists](https://leetcode.com/problems/merge-k-sorted-lists) — multi-list merging using min-heap

### Monotonic Stack

**Easy – Learning**

* [20. Valid Parentheses](https://leetcode.com/problems/valid-parentheses) — core stack introduction
* [496. Next Greater Element I](https://leetcode.com/problems/next-greater-element-i) — intro to monotonic decreasing stack
* [739. Daily Temperatures](https://leetcode.com/problems/daily-temperatures) — most common interview monotonic stack example

**Medium – Practice**

* [503. Next Greater Element II](https://leetcode.com/problems/next-greater-element-ii) — circular array monotonic stack
* [402. Remove K Digits](https://leetcode.com/problems/remove-k-digits) — greedy + monotonic stack for smallest sequence

**Hard – Mastery**

* [84. Largest Rectangle in Histogram](https://leetcode.com/problems/largest-rectangle-in-histogram) — definitive monotonic stack hard problem

### BFS

**Easy – Learning**

* [102. Binary Tree Level Order Traversal](https://leetcode.com/problems/binary-tree-level-order-traversal) — pure BFS template
* [104. Maximum Depth of Binary Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree) — simple BFS traversal
* [200. Number of Islands](https://leetcode.com/problems/number-of-islands) — top interview grid traversal problem

**Medium – Practice**

* [994. Rotting Oranges](https://leetcode.com/problems/rotting-oranges) — multi-source BFS
* [127. Word Ladder](https://leetcode.com/problems/word-ladder) — classic shortest path in implicit graph

**Hard – Mastery**

* [1293. Shortest Path in a Grid with Obstacles Elimination](https://leetcode.com/problems/shortest-path-in-a-grid-with-obstacles-elimination) — BFS with state and constraints

### DFS

**Easy – Learning**

* [112. Path Sum](https://leetcode.com/problems/path-sum) — clean recursive DFS
* [226. Invert Binary Tree](https://leetcode.com/problems/invert-binary-tree) — DFS transformation pattern
* [101. Symmetric Tree](https://leetcode.com/problems/symmetric-tree) — recursive mirrored DFS

**Medium – Practice**

* [200. Number of Islands](https://leetcode.com/problems/number-of-islands) — essential DFS grid traversal
* [133. Clone Graph](https://leetcode.com/problems/clone-graph) — DFS with visited map

**Hard – Mastery**

* [212. Word Search II](https://leetcode.com/problems/word-search-ii) — DFS + trie with pruning

### Dynamic Programming

**Easy – Learning**

* [70. Climbing Stairs](https://leetcode.com/problems/climbing-stairs) — intro recurrence
* [198. House Robber](https://leetcode.com/problems/house-robber) — optimal substructure reasoning
* [746. Min Cost Climbing Stairs](https://leetcode.com/problems/min-cost-climbing-stairs) — simple DP recurrence variation

**Medium – Practice**

* [300. Longest Increasing Subsequence](https://leetcode.com/problems/longest-increasing-subsequence) — widely asked DP
* [322. Coin Change](https://leetcode.com/problems/coin-change) — classic knapsack-style DP

**Hard – Mastery**

* [72. Edit Distance](https://leetcode.com/problems/edit-distance) — foundational advanced DP

### Backtracking

**Easy – Learning**

* [78. Subsets](https://leetcode.com/problems/subsets) — core combinatorial DFS
* [46. Permutations](https://leetcode.com/problems/permutations) — fundamental backtracking template
* [39. Combination Sum](https://leetcode.com/problems/combination-sum) — teaches branching and pruning

**Medium – Practice**

* [17. Letter Combinations of a Phone Number](https://leetcode.com/problems/letter-combinations-of-a-phone-number) — mapping + DFS
* [90. Subsets II](https://leetcode.com/problems/subsets-ii) — handling duplicates cleanly

**Hard – Mastery**

* [51. N-Queens](https://leetcode.com/problems/n-queens) — iconic backtracking mastery problem

## Other Tips

### Input array is sorted

* Use **binary search** for efficient lookups
* Use **two pointers** for pair-sum, window, or convergence patterns

### Problems requiring all permutations or subsets

* Use **backtracking** to generate all combinations, subsets, or permutations

### Tree problems

* Use **DFS** for depth-focused traversal or recursive structural checks
* Use **BFS** for level-order traversal or shortest-path–style logic

### Graph problems

* Use **DFS** to explore connected components or detect cycles
* Use **BFS** for shortest path in unweighted graphs or layer-based exploration

### Linked list problems

* Use **two pointers** for fast/slow traversal, cycle detection, or middle-finding

### When recursion is not allowed

* Use a **stack** to simulate recursive behavior manually

### When the solution must be in-place

* **Swap values** between indices to avoid extra storage
* **Reuse existing slots** or encode multiple values in one place when possible

### Maximum/minimum subarray or subset

* Use **dynamic programming** for optimal substructure problems
* Use a **sliding window** when the subarray is contiguous with monotonic constraints

### Top/least K elements

* Use a **heap** for efficient K-selection
* Use **QuickSelect** for average-linear Kth-element selection

### Common string or pattern problems

* Use a **hash map** to count or compare frequencies
* Use a **trie** for prefix-based queries or dictionary-style lookup

### General fallback approaches

* Use a **map/set** for O(1) access with O(n) space
* **Sort** the input when ordering simplifies logic to O(n log n) time and O(1) extra space

