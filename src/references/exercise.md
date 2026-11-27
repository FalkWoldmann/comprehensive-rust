---
minutes: 20
---

<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Exercise: Geometry

Start with the matching [Rustlings](https://rustlings.rust-lang.org/) exercises:

- `primitive_types4` (slices)
- `move_semantics4` and `move_semantics5`
- `strings1` to `strings4`

`strings3` needs two string methods that are not on the slides: `s.trim()`
returns a `&str` without the whitespace at both ends, and `s.replace("a", "b")`
returns a new `String`.

Then continue with the exercise below.

We will create a few utility functions for 3-dimensional geometry, representing
a point as `[f64;3]`. It is up to you to determine the function signatures.

```rust,compile_fail,editable
# // Copyright 2023 Google LLC
# // SPDX-License-Identifier: Apache-2.0
#
// Calculate the magnitude of a vector by summing the squares of its coordinates
// and taking the square root. Use the `sqrt()` method to calculate the square
// root, like `v.sqrt()`.

{{#include exercise.rs:magnitude}}
fn magnitude(...) -> f64 {
    todo!()
}

// Normalize a vector by calculating its magnitude and dividing all of its
// coordinates by that magnitude.

{{#include exercise.rs:normalize}}
fn normalize(...) {
    todo!()
}

// Use the following `main` to test your work.

{{#include exercise.rs:main}}
```
