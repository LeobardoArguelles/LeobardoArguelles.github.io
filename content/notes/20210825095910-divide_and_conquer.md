+++
title = "Divide and Conquer"
author = ["Leobardo Argüelles"]
draft = false
+++

## Steps {#steps}


### Divide {#divide}

The problem into a number of subproblems that are smaller instances of
the same problem.


### Conquer {#conquer}

The subproblems by solving them recursively. If the subproblem sizes are
small enough, however, just solve the subproblems in a straightforward manner.


### Combine {#combine}

The solutions to the subproblems into the solution for the original problem.


## Cases in divide and conquer {#cases-in-divide-and-conquer}


### Recursive case {#recursive-case}

This is when the subproblem is big enough to keep solving it [recursively]({{<relref "20210825102049-recurrences.md#" >}}).


### Base case {#base-case}

This is when the subproblems became small enough to use something else than
recursion. It is said that the recursion "bottoms out".


## Example applications {#example-applications}

-   [The Maximum Subarray Problem]({{<relref "20210825101220-the_maximum_subarray_problem.md#" >}})
