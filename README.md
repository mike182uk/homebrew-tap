# homebrew-tap

Homebrew formulae & casks for various tools.

## Installation

```sh
brew tap mike182uk/tap
```

## Available Tools

| Name | Description | Versions |
|------|-------------|----------|
| [snpt](https://github.com/mike182uk/snpt) | A gist powered CLI snippet retriever | [`3.0.0`](https://github.com/mike182uk/snpt/releases/tag/3.0.0), [`2.1.0`](https://github.com/mike182uk/snpt/releases/tag/2.1.0) |
| [balena-cli](https://github.com/balena-io/balena-cli) | The official balena CLI tool | [`14.5.12`](https://github.com/balena-io/balena-cli/releases/tag/v14.5.12)

### snpt

To install the latest version supported by this tap:

```sh
brew install mike182uk/tap/snpt
```

To install a specific version:

```sh
brew install mike182uk/tap/snpt@2.1.0
```

### balena-cli

To install the latest version supported by this tap:

```sh
brew install mike182uk/tap/balena-cli
```

There is already a Hombrew formula for `balena-cli` in [`homebrew/core`](https://github.com/Homebrew/homebrew-core/blob/master/Formula/balena-cli.rb) but it installs an out of date version (`v12.25.0`) and has a dependency on `node`.
