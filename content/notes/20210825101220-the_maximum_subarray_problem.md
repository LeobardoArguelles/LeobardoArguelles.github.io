+++
title = "The Maximum Subarray Problem"
author = ["Leobardo Argüelles"]
draft = false
+++

This problem aims to find what subarray from an array of integers provides the largest
sum.

The Divide-and-Conquer paradigm implies that we have to split our original array in two parts
and solve them recursively.
Knowing this, we need to keep in mind that the maximum subarray could either:

-   Be in the left half (from start to midpoint)
-   Be in the right half (from midpoint + 1 to end)
-   Span both halfs

This last scenario is an additional problem that **is not a smaller version of the original problem**.
That is, we won't be solving it recursively.


## Finding the max subarray spanning halfs {#finding-the-max-subarray-spanning-halfs}

This runs in linear time θ(n).
Using pseudocode for the algorithm:

```text
FIND-MAX-COSSING-SUBARRAY(A, low, mid, high)
left-sum = -∞
sum = 0
for i = mid downto low
    sum = sum + A[i]
    if sum > left-sum:
        left-sum = sum
        max-left = i
right-sum = -∞
sum = 0
for j = mid + 1 to high
    sum = sum + A[j]
    if sum > right-sum:
        right-sum = sum
        max-right = j
return(max-left, max-right, left-sum + right-sum)
```


## Solving maximum-subarray with Divide-and-Conquer {#solving-maximum-subarray-with-divide-and-conquer}

```text
FIND-MAXIMUM-SUBARRAY(A, low, high)
if high == low:
    return(low, high, A[low])   // base case: only one element
else:
    mid = ⌊(low + high)/2⌋
    (left-low, left-high, left-sum) = FIND-MAXIMUM-SUBARRAY(A, low, mid)
    (right-low, right-high, right-sum) = FIND-MAXIMUM-SUBARRAY(A, mid+1, high)
    (cross-low, cross-high, cross-sum) = FIND-MAX-CROSSING-SUBARRAY(A, low, mid, high)
    if left-sum ≥ right-sum and left-sum ≥ cross-sum:
        return(left-low, left-high, left-sum)
    elseif right-sum ≥ left-sum and right-sum ≥ cross-sum:
        return(right-low, right-high, right-sum)
    else:
        return(cross-low, cross-high, cross-sum)
```
