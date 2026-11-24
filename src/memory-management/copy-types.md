---
minutes: 5
---

<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Copy Types

While move semantics are the default, certain types are copied by default:

```rust,editable
# // Copyright 2023 Google LLC
# // SPDX-License-Identifier: Apache-2.0
#
fn main() {
    let x = 42;
    let y = x;
    dbg!(x); // would not be accessible if not Copy
    dbg!(y);
}
```

These types are called `Copy` types. All the scalar types are `Copy`, and so are
tuples and arrays whose elements are all `Copy`:

```rust,editable
# // Copyright 2023 Google LLC
# // SPDX-License-Identifier: Apache-2.0
#
fn main() {
    let p1 = (3, 4);
    let p2 = p1;
    println!("p1: {p1:?}");
    println!("p2: {p2:?}");
}
```

- After the assignment, both `p1` and `p2` own their own data.
- We can also use `p1.clone()` to explicitly copy the data.

<details>

Copying and cloning are not the same thing:

- Copying refers to bitwise copies of memory regions and does not work on
  arbitrary objects.
- Copying does not allow for custom logic (unlike copy constructors in C++).
- Cloning is a more general operation and also allows for custom behavior by
  implementing the `Clone` trait.
- Copying does not work on types that implement the `Drop` trait.

In the above example, try the following:

- Change the tuple to `(3, String::from("four"))`. It will not compile because
  `String` is not a `Copy` type, so the tuple isn't either. The compiler error
  is in the `println!` for `p1`.
- Show that it works if you clone `p1` instead.

`Copy` is a trait, and your own types can opt in to copy semantics by
implementing it. We will see how once we have covered structs and traits.

# More to Explore

- Shared references are `Copy`/`Clone`, mutable references are not. This is
  because Rust requires that mutable references be exclusive, so while it's
  valid to make a copy of a shared reference, creating a copy of a mutable
  reference would violate Rust's borrowing rules.

</details>
