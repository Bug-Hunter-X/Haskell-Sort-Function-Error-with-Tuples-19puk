This repository demonstrates a common error encountered when using Haskell's `sort` function with tuples.  The `sort` function, by default, uses the Ord instance to compare elements.  However,  the default Ord instance for tuples compares tuples lexicographically, which is not always the desired behavior.

The `bug.hs` file shows the error: attempting to sort a list of tuples directly using `sort` results in a compile-time error because Haskell cannot deduce the ordering for the tuple.

The `bugSolution.hs` file shows a solution.  It demonstrates how to correctly sort a list of tuples by explicitly defining a comparison function using `compare` and `sortBy` from `Data.List`. 