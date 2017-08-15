# Tools

## Installation

```sh
npm install
```

## Use

Lint all Markdown files:

```sh
./tools/lint.sh
```

Lint select files:

```sh
./tools/lint.sh docs/js*.md
```

Lint files changed in Git:

```sh
./tools/lint.sh $(git ls-files --modified)
```
