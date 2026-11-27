---
minutes: 30
---

<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Exercise: Binary Tree

Start with the matching [Rustlings](https://rustlings.rust-lang.org/) exercises:

- `box1`
- `rc1`

`cow1` is optional: it is about `Cow`, a clone-on-write pointer this course does
not cover, so read the documentation of `std::borrow::Cow` first. `arc1` uses
`Arc` with threads and belongs to the Concurrency deep dive.

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
