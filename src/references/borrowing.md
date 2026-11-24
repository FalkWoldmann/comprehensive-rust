---
minutes: 3
---

<!--
Copyright 2026 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Borrowing Instead of Moving

Passing a value to a function moves it, and cloning it for every call is
wasteful. Instead of transferring ownership, you can let a function _borrow_ the
value by passing a _reference_ to it:

```rust,editable
# // Copyright 2026 Google LLC
# // SPDX-License-Identifier: Apache-2.0
#
fn say_hello(name: &String) {
    println!("Hello {name}")
}

fn main() {
    let name = String::from("Alice");
    say_hello(&name);
    say_hello(&name);
}
```

- `&name` creates a reference to `name` without moving it.
- `say_hello` can read the string through the reference, but `main` remains the
  owner.

<details>

- This is the same `say_hello` example as in the previous segment. Remove the
  `&` in the function signature and in the calls to remind students of the
  "use of moved value" error that references solve.

- The string is still freed exactly once: when its owner, `name`, goes out of
  scope at the end of `main`.

- References are useful for `Copy` types as well, for example to let a function
  modify a value owned by its caller. The rest of this segment looks at
  references in detail.

- Idiomatic Rust would take `&str` instead of `&String` here. We get to that on
  the [Strings](strings.md) slide.

</details>
