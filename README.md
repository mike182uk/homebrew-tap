# homebrew-tap

Homebrew formulae & casks for various tools.

## Installation

```sh
brew tap mike182uk/tap
```

## Available Tools

| Name | Description | Versions |
|------|-------------|----------|
| [OpenZWave](https://github.com/OpenZWave/open-zwave) | Library that interfaces with selected Z-Wave PC controllers | [`1.6`](http://old.openzwave.com/downloads/) , [`1.4`](https://github.com/OpenZWave/open-zwave/releases/tag/v1.4) |
| [snpt](https://github.com/mike182uk/snpt) | A gist powered CLI snippet retriever | [`3.0.0`](https://github.com/mike182uk/snpt/releases/tag/3.0.0), [`2.1.0`](https://github.com/mike182uk/snpt/releases/tag/2.1.0) |
| [balena-cli](https://github.com/balena-io/balena-cli) | The official balena CLI tool | [`12.55.4`](https://github.com/balena-io/balena-cli/releases/tag/v12.55.4)

### OpenZWave

To install the latest version supported by this tap:

```sh
brew install mike182uk/tap/open-zwave
```

To install a specific version:

```sh
brew install mike182uk/tap/open-zwave@1.4
```

There is already a Hombrew formula for `OpenZWave` in [`homebrew/core`](https://github.com/Homebrew/homebrew-core/blob/master/Formula/open-zwave.rb) but it installs an out of date version (`v1.2.919`) and it does not work correctly with other tools like [node-openzwave-shared](https://github.com/OpenZWave/node-openzwave-shared).

An effort was made to [update the formula](https://github.com/Homebrew/homebrew-core/pull/22486/) in `homebrew/core` but this was never merged. The formula in this repo builds off of that PR.

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
