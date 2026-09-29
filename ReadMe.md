# Evolving the YAML Family

This repository contains the complete working draft of Ingy döt Net's talk
for Open Source Summit Europe 2026.

The deck is presented in Vim with Vroom.
Commands and URLs on the slides are interactive: move to one and press Enter.

[View the slideshow website](https://ingydotnet.github.io/oss-eu-yaml-talk/).

## Run the talk

```sh
make preflight
make run
```

Start at a specific zero-based slide number with:

```sh
make run s=18
```

The first run installs all required tools under `.cache/` through Makes.
The talk does not rely on globally installed language runtimes or CLIs.

## Slideshow website

Build and serve the browser version locally with:

```sh
make serve
```

The server rebuilds the website whenever `slides.vroom` changes and serves it
at <http://127.0.0.1:8000/>.
Use `HOST` and `PORT` to override the listening address.

Publish the generated website to the `gh-pages` branch with:

```sh
make publish
```

## Validate everything

```sh
make check
```

This compiles the Vroom deck, checks both Bash programs with ShellCheck,
lints and runs the YAMLScript example, converts the YAMLSchema example,
and exercises the YAMLStar and go-yaml interoperability demos.

Each live demo also has a captured output under `demo/fallback/`.
The timing, speaking notes, cut list, and recovery plan are in
[`note/run-of-show.md`](note/run-of-show.md).
