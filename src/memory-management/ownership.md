---
minutes: 5
---

<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Ownership

All variable bindings have a _scope_ where they are valid and it is an error to
use a variable outside its scope:

```rust,editable,compile_fail
# // Copyright 2023 Google LLC
# // SPDX-License-Identifier: Apache-2.0
#
fn main() {
    {
        let s = String::from("Hello");
        println!("{s}");
    }
    println!("{s}");
}
```

We say that the variable _owns_ the value. Every Rust value has precisely one
owner at all times.

At the end of the scope, the variable is _dropped_ and the data is freed. A
destructor can run here to free up resources.

<details>

For the `String` in this example, the heap buffer holding the text is freed when
`s` goes out of scope at the closing brace of the inner block.

Students familiar with garbage collection implementations will know that a
garbage collector starts with a set of "roots" to find all reachable memory.
Rust's "single owner" principle is a similar idea.

</details>
