# homebrew-tap

Homebrew formulae & casks for various tools that I use

## Installation

```sh
brew tap mike182uk/tap
```

## Available Tools

| Name | Description | Version(s) |
|------|-------------|----------|
| [balena-cli](https://github.com/balena-io/balena-cli) | The official balena CLI tool | [`19.0.13`](https://github.com/balena-io/balena-cli/releases/tag/v19.0.13)

### balena-cli

To install the latest version supported by this tap:

```sh
brew install mike182uk/tap/balena-cli
```

There is already a Hombrew formula for `balena-cli` in [`homebrew/core`](https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/b/balena-cli.rb) but it has a dependency on `node`. This cask installs `balena-cli` using the official installer which bundles all of its dependencies.
