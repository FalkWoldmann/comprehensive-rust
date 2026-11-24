<!--
Copyright 2023 Google LLC
SPDX-License-Identifier: CC-BY-4.0
-->

# Course Structure

> This page is for the course instructor.

## Rust Fundamentals

The first four days make up [Rust Fundamentals](../welcome-day-1.md). The days
are fast-paced and we cover a broad range of topics!

{{%course outline Fundamentals}}

## Deep Dive

In addition to the 4-day class on Rust Fundamentals, there is one more
specialized topic:

### Concurrency in Rust

The [Concurrency in Rust](../concurrency/welcome.md) deep dive is a full day
class on classical as well as `async`/`await` concurrency.

You will need a fresh crate set up and the dependencies downloaded and ready to
go. You can then copy/paste the examples into `src/main.rs` to experiment with
them:

```shell
cargo init concurrency
cd concurrency
cargo add tokio --features full
cargo run
```

{{%course outline Concurrency}}

## Format

The course is meant to be very interactive and we recommend letting the
questions drive the exploration of Rust!
