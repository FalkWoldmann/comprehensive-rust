---
minutes: 15
---

<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Exercise: Fibonacci

Start with the matching [Rustlings](https://rustlings.rust-lang.org/) exercises:

- `intro1` and `intro2`
- `variables1` to `variables5`
- `primitive_types1` and `primitive_types2`

`variables5` uses _shadowing_: a second `let` with the same name declares a new
variable that hides the first one and may have a different type. `variables6` is
about `const` and follows in the User-Defined Types segment.

Then continue with the exercise below.

The Fibonacci sequence begins with `[0, 1]`. For `n > 1`, the next number is the
sum of the previous two.

Write a function `fib(n)` that calculates the nth Fibonacci number. When will
this function panic?

```rust,editable,should_panic
# // Copyright 2023 Google LLC
# // SPDX-License-Identifier: Apache-2.0
#
{{#include exercise.rs:fib}}
    if n < 2 {
        // The base case.
        return todo!("Implement this");
    } else {
        // The recursive case.
        return todo!("Implement this");
    }
}

{{#include exercise.rs:main}}
```

<details>

- This exercise is a classic introduction to recursion.
- Encourage students to think about the base cases and the recursive step.
- The question "When will this function panic?" is a hint to think about integer
  overflow. The Fibonacci sequence grows quickly!
- Students might come up with an iterative solution as well, which is a great
  opportunity to discuss the trade-offs between recursion and iteration (e.g.,
  performance, stack overflow for deep recursion).

</details>
