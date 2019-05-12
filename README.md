# homebrew-tap

Homebrew formulae for various tools.

## Installation

```sh
brew tap mike182uk/tap
```

## Available Tools

| Name | Description | Version |
|------|-------------|---------|
| [OpenZWave](https://github.com/OpenZWave/open-zwave) | Library that interfaces with selected Z-Wave PC controllers | [v1.4](https://github.com/OpenZWave/open-zwave/releases/tag/v1.4) |

### OpenZWave

```sh
brew install mike182uk/tap/open-zwave
```

There is already a Hombrew formula for `OpenZWave` in [`homebrew/core`](https://github.com/Homebrew/homebrew-core/blob/master/Formula/open-zwave.rb) but it installs an out of date version (`v1.2.919`) and it does not work correctly with other tools like [node-openzwave-shared](https://github.com/OpenZWave/node-openzwave-shared).

An effort was made to [update the formula](https://github.com/Homebrew/homebrew-core/pull/22486/) in `homebrew/core` but this was never merged. The formula in this repo builds off of that PR.
