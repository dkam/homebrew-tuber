# homebrew-tuber

Homebrew tap for [Tuber](https://github.com/tuberq/tuber) — a fast work queue server (Rust rewrite of beanstalkd) and its companion tools.

## Formulae

| Formula | Description | Version |
|---------|-------------|---------|
| `tuber` | Work queue server | 0.3.15 |
| `tuber-tui` | Terminal UI for monitoring and managing queues | 0.6.0 |
| `tuber-cli` | CLI client for interacting with queues | 0.6.0 |

## Installation

```sh
brew tap tuberq/tuber
```

Install the server:

```sh
brew install tuber
```

Install the client tools:

```sh
brew install tuber-tui
brew install tuber-cli
```

## Supported platforms

- macOS (Apple Silicon & Intel)
- Linux (ARM & x86_64)

## Updating formulae

Regenerate formulae after a new release:

```sh
bin/generate-formula.sh
```

## License

MIT
