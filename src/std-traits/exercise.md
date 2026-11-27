---
minutes: 30
---

<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Exercise: ROT13

Start with the matching [Rustlings](https://rustlings.rust-lang.org/) exercises:

- `using_as`
- `from_into`
- `as_ref_mut`

`as_ref_mut` is about `AsRef` and `AsMut`, two conversion traits this course
does not cover: `T: AsRef<str>` means `arg.as_ref()` gives a `&str`, and
`T: AsMut<u32>` means `arg.as_mut()` gives a `&mut u32`.

`from_str` and `try_from_into` return a `Result` and follow in the Error
Handling segment.

Then continue with the exercise below.

In this example, you will implement the classic
["ROT13" cipher](https://en.wikipedia.org/wiki/ROT13). Copy this code to the
playground, and implement the missing bits. Only rotate ASCII alphabetic
characters, to ensure the result is still valid UTF-8.

```rust,editable
# // Copyright 2023 Google LLC
# // SPDX-License-Identifier: Apache-2.0
#
{{#include exercise.rs:head }}

// Implement the `Read` trait for `RotDecoder`.

{{#include exercise.rs:tests }}
```

What happens if you chain two `RotDecoder` instances together, each rotating by
13 characters?
