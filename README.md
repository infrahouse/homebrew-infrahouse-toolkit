# InfraHouse Homebrew Tap

The [Homebrew](https://brew.sh) tap for [infrahouse-toolkit](https://github.com/infrahouse/infrahouse-toolkit), the
`ih-*` command-line tools.

## Requirements

macOS 13 (Ventura) or later on Apple Silicon (arm64). The formula doesn't install on Intel Macs or on Linux.

## Installation

```bash
brew install infrahouse/tap/infrahouse-toolkit
```

The formula installs a prebuilt, self-contained tree from the toolkit's GitHub release,
`infrahouse-toolkit-<version>-macos-arm64.tar.gz`: its own Python interpreter
([python-build-standalone](https://github.com/astral-sh/python-build-standalone)), the toolkit's locked dependencies
and the toolkit. It doesn't use Homebrew's Python, OpenSSL or libsodium, and it builds nothing.

## Upgrading

```bash
brew update
brew upgrade infrahouse-toolkit
```

## Uninstalling

```bash
brew uninstall infrahouse-toolkit
```

## Moving from the old tap name

This repository was `infrahouse/homebrew-infrahouse-toolkit`, the tap `infrahouse/infrahouse-toolkit`. GitHub
redirects the old repository name, but Homebrew names a tap after its repository and doesn't follow the rename. If you
installed from the old tap, install from the new one:

```bash
brew uninstall infrahouse-toolkit
brew untap infrahouse/infrahouse-toolkit
brew install infrahouse/tap/infrahouse-toolkit
```

## How a new release reaches the formula

Each toolkit release attaches the tarball and its `.sha256` to the GitHub release `v<version>`. Then the toolkit's CD
opens a pull request here, `infrahouse-toolkit <version>`, that changes the formula's `url` and `sha256` to the
release's. The GitHub App `infrahouse-homebrew-tap` opens it, so this repository's CI runs on it:
`infrahouse-toolkit formula` installs and tests the new formula. Aleks reviews and merges it; nothing merges it
automatically. Once it's merged, `brew update && brew upgrade infrahouse-toolkit` installs the release.

If the toolkit's CD can't open the pull request, its run turns red and says why. A hand edit is the fallback
([CLAUDE.md](CLAUDE.md) has the steps).

## CI

`.github/workflows/formula.yml` runs on every pull request and every push to `main`, on a `macos-15` runner:
`brew style`, `brew audit --strict --online`, `brew install`, `brew info`, `brew test`, the `ih-*` scripts through
`$(brew --prefix)/bin`, and `brew uninstall`.

## Documentation

For usage documentation, available commands, and configuration options, see the
[infrahouse-toolkit README](https://github.com/infrahouse/infrahouse-toolkit).
