# Comprehensive Rust 🦀 (seminar fork)

This is a hard fork of [Comprehensive Rust](https://github.com/google/comprehensive-rust),
the Rust course developed by the Android team at Google. It is mainly intended
for the weekend seminar "Einführung in die Programmiersprache Rust" at
[NORDAKADEMIE](https://www.nordakademie.de/), where the lecture parts follow
this course and the exercises come from
[Rustlings](https://rustlings.rust-lang.org/), with
[The Rust Programming Language](https://doc.rust-lang.org/book/) as the
reference.

Read it at **https://falkwoldmann.github.io/comprehensive-rust/**.

The fork is not meant to be merged back and does not track upstream. If you
want the full course with all its deep dives and translations, use the original
at https://google.github.io/comprehensive-rust/.

## Differences from upstream

The seminar alternates between slides from this course and Rustlings exercises,
and students look things up in the Rust Book. That only works well when all
three cover topics in roughly the same order, and upstream does not: it
introduces references on day 1 and ownership on day 3. In class this left the
students wondering what references are for, see
[this discussion](https://github.com/google/comprehensive-rust/discussions/2956).
The changes below all follow from that.

### Ownership comes before references

Memory Management (program memory, ownership, moves, `clone`, copy types) moved
from day 3 to day 1, directly before References, as in chapter 4 of the Rust
Book and the `move_semantics` exercises in Rustlings. References now start with
a slide that continues the move example and shows a borrow as the way out, and
the segment ends with the borrow checker's rules, which upstream only shows on
day 3. The ownership slides use `String` and tuples in their examples because
structs are not known yet at that point.

### The rest of Rust Fundamentals follows the Rust Book more closely

| Session         | Segments                                                 | Rust Book   |
| --------------- | -------------------------------------------------------- | ----------- |
| Day 1 morning   | Hello World, Types and Values, Control Flow Basics       | ch. 1, 3    |
| Day 1 afternoon | Tuples and Arrays, Memory Management, References         | ch. 3, 4    |
| Day 2 morning   | User-Defined Types, Pattern Matching, Methods and Traits | ch. 5, 6    |
| Day 2 afternoon | Generics, Standard Library Types, Closures               | ch. 8, 10   |
| Day 3 morning   | Standard Library Traits, Error Handling                  | ch. 9       |
| Day 3 afternoon | Ownership in Practice, Lifetimes                         | ch. 10      |
| Day 4 morning   | Testing, Iterators, Modules                              | ch. 11, 13  |
| Day 4 afternoon | Smart Pointers, Unsafe Rust                              | ch. 15, 20  |

`Drop` and interior mutability (`Cell`, `RefCell`) moved into Smart Pointers,
where chapter 15 of the Rust Book has them. What is left of upstream's Borrowing
segment is now called Ownership in Practice: it revisits ownership and borrowing
on day 3 with structs, methods and collections, and holds the Builder Type and
Wizard's Inventory exercises, which need more of the language than day 1 has
covered.

The order still differs from the Rust Book in three places, each time because an
exercise depends on a later topic. Modules stays on day 4 since its exercise
uses trait objects, iterators and closures. Standard Library Types comes after
Generics since the Counter exercise is generic. Error Handling comes after
traits since it needs `From` and `dyn Error`.

### Only what the Rust Book covers

The deep dives on Android, Chromium, bare-metal Rust, idiomatic Rust, unsafe
Rust and macros are removed. They have no counterpart in the Rust Book and are
out of reach for a weekend seminar with Rust beginners. Rust Fundamentals and
the Concurrency deep dive (chapters 16 and 17 of the Rust Book) remain.

### English only

The translations (`po/`) and the tooling around them (the gettext preprocessor,
the language picker, the per-language builds in CI) are removed. The
translations are tied to upstream's text and page order, so after the
reordering they would be out of date on most pages, and nobody maintains them
here. The translated versions of the original course are
linked from https://google.github.io/comprehensive-rust/.

### Housekeeping that follows from the above

Redirects, CI jobs, Dependabot entries and workspace members that pointed at
removed content are gone. Pages that moved to another segment have a redirect
from their old URL.

## Setup

The course is built using a few tools:

- [mdbook](https://github.com/rust-lang/mdBook)
- [mdbook-svgbob](https://github.com/boozook/mdbook-svgbob)
- [mdbook-exerciser](mdbook-exerciser/)
- [mdbook-course](mdbook-course/)
- [mdbook-linkcheck2](https://github.com/marxin/mdbook-linkcheck2)

First, install Rust by following the instructions on https://rustup.rs/. Then
clone this repository:

```shell
git clone https://github.com/FalkWoldmann/comprehensive-rust/
cd comprehensive-rust
```

Then run the following command to install the correct versions of all tools
mentioned above:

```shell
cargo xtask install-tools
```

You will find the tools in your `~/.cargo/bin/` directory afterwards.

## Commands

Here are some of the commonly used commands you can run in the project. Run
`cargo xtask` to view all available commands.

| Command                     | Description                                                                                                                                                                                                                                                                                                                                                                                                                            |
| --------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `cargo xtask install-tools` | Install all the tools the project depends on.                                                                                                                                                                                                                                                                                                                                                                                          |
| `cargo xtask serve`         | Start a web server with the course. You'll find the content on http://localhost:3000.                                                                                                                                 |
| `cargo xtask rust-tests`    | Test the included Rust snippets.                                                                                                                                                                                                                                                                                                                                                                                                       |
| `cargo xtask web-tests`     | Run the web driver tests in the tests directory.                                                                                                                                                                                                                                                                                                                                                                                       |
| `cargo xtask build`         | Create a static version of the course in the `book/` directory. Note that you have to separately build and zip exercises and add them to book/html. |

> **Note** On Windows, you need to enable symlinks
> (`git config --global core.symlinks true`) and Developer Mode.

## Contributing

Changes that are useful for the course in general should go to
[upstream](https://github.com/google/comprehensive-rust) instead, see its
[CONTRIBUTING.md](CONTRIBUTING.md). Issues and pull requests here are welcome
for anything specific to the seminar.

## License

This project is licensed under a mix of the Apache License 2.0 and the Creative
Commons Attribution 4.0 International License.

- **Source Code:** All source code files and code examples embedded in the
  documentation are licensed under the [Apache License, Version 2.0](LICENSE).

- **Documentation & Content:** All non-source code assets—specifically Markdown
  (`.md`) files, documentation, and images—are licensed under the
  [Creative Commons Attribution 4.0 International License](LICENSE-CC-BY).
