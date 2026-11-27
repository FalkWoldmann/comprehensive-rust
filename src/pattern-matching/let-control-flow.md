---
minutes: 10
---

<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Let Control Flow

Rust has a few control flow constructs that differ from other languages. They
are used for pattern matching:

- `if let` expressions
- `while let` expressions
- `let else` expressions

<details>

The examples on the next slides use two enums from the standard library:
`Option<T>` with the variants `Some(T)` and `None`, and `Result<T, E>` with the
variants `Ok(T)` and `Err(E)`. Students only need to know that they are ordinary
enums; the Standard Library Types segment covers them in detail.

</details>
