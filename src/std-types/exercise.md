---
minutes: 20
---

<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Exercise: Counter

Start with the matching [Rustlings](https://rustlings.rust-lang.org/) exercises:

- `options1` and `options3`
- `vecs2`
- `hashmaps1` to `hashmaps3`

The second half of `vecs2` uses `.iter().map(...).collect()` with a closure.
Follow the pattern of `vec_map_example` in the exercise; closures and iterators
are covered later.

Then continue with the exercise below.

In this exercise you will take a very simple data structure and make it generic.
It uses a
[`std::collections::HashMap`](https://doc.rust-lang.org/stable/std/collections/struct.HashMap.html)
to keep track of what values have been seen and how many times each one has
appeared.

The initial version of `Counter` is hardcoded to only work for `char` values.
Make the struct and its methods generic over the type of value being tracked,
that way `Counter` can track any type of value.

If you finish early, try using the
[`entry`](https://doc.rust-lang.org/stable/std/collections/struct.HashMap.html#method.entry)
method to halve the number of hash lookups required to implement the `count`
method.

```rust,compile_fail,editable
# // Copyright 2023 Google LLC
# // SPDX-License-Identifier: Apache-2.0
#
use std::collections::HashMap;

/// Counter counts the number of times each value of type T has been seen.
struct Counter {
    counts: HashMap<char, u64>,
}

impl Counter {
    /// Create a new Counter.
    fn new() -> Self {
        Counter {
            counts: HashMap::new(),
        }
    }

    /// Count an occurrence of the given value.
    fn count(&mut self, value: char) {
        if self.counts.contains_key(&value) {
            *self.counts.get_mut(&value).unwrap() += 1;
        } else {
            self.counts.insert(value, 1);
        }
    }

    /// Return the number of times the given value has been seen.
    fn times_seen(&self, value: char) -> u64 {
        self.counts.get(&value).copied().unwrap_or_default()
    }
}

{{#include exercise.rs:main}}
```
