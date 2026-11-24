---
minutes: 15
---

<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Exercise: Modules for a GUI Library

In this exercise, you will reorganize a small GUI Library implementation. This
library defines a `Widget` trait and a few implementations of that trait, as
well as a `main` function.

It is typical to put each type or set of closely-related types into its own
module, so each widget type should get its own module.

## Cargo Setup

The Rust playground only supports one file, so you will need to make a Cargo
project on your local filesystem:

```shell
cargo init gui-modules
cd gui-modules
cargo run
```

Edit the resulting `src/main.rs` to add `mod` statements, and add additional
files in the `src` directory.

## Source

Here's the single-module implementation of the GUI library:

```rust,editable
# // Copyright 2023 Google LLC
# // SPDX-License-Identifier: Apache-2.0
#
{{#include exercise.rs:single-module}}
```

<details>

The code stores its widgets as `Box<dyn Widget>`, an owned trait object. `Box`
is covered in the Smart Pointers segment this afternoon; for this exercise
students only need to move the code around, not change it.

Encourage students to divide the code in a way that feels natural for them, and
get accustomed to the required `mod`, `use`, and `pub` declarations. Afterward,
discuss what organizations are most idiomatic.

</details>
