---
minutes: 30
---

<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Exercise: Binary Tree

Start with the matching [Rustlings](https://rustlings.rust-lang.org/) exercises:

- `smart_pointers1` (`Box`)
- `smart_pointers2` (`Rc`)
- `smart_pointers4` (`Cow`)

`smart_pointers3` uses `Arc` with threads and belongs to the Concurrency deep
dive.

Then continue with the exercise below.

A binary tree is a tree-type data structure where every node has two children
(left and right). We will create a tree where each node stores a value. For a
given node N, all nodes in a N's left subtree contain smaller values, and all
nodes in N's right subtree will contain larger values. A given value should only
be stored in the tree once, i.e. no duplicate nodes.

Implement the following types, so that the given tests pass.

```rust,compile_fail,editable
# // Copyright 2023 Google LLC
# // SPDX-License-Identifier: Apache-2.0
#
{{#include exercise.rs:types}}

// Implement `new` for `Node`.
// Implement `new`, `insert`, `len`, and `has` for `Subtree`.

{{#include exercise.rs:tests}}
```
