# Homebrew Tap for InfraHouse Toolkit

A [Homebrew](https://brew.sh) tap for installing
[infrahouse-toolkit](https://github.com/infrahouse/infrahouse-toolkit) on macOS and Linux.

## Installation

```bash
brew install infrahouse/infrahouse-toolkit/infrahouse-toolkit
```

Or add the tap first:

```bash
brew tap infrahouse/infrahouse-toolkit
brew install infrahouse-toolkit
```

## Upgrading

```bash
brew update
brew upgrade infrahouse-toolkit
```

## Uninstalling

```bash
brew uninstall infrahouse-toolkit
```

## Documentation

For usage documentation, available commands, and configuration options, see the
[infrahouse-toolkit README](https://github.com/infrahouse/infrahouse-toolkit).

## How Updates Work

Formula updates are automated. When a new version of
[infrahouse-toolkit](https://github.com/infrahouse/infrahouse-toolkit) is released,
a GitHub Actions workflow automatically creates a PR that updates the formula version,
checksum, and Python dependencies.

## Manual Version Update

If you need to update the formula manually:

1. Update the version and sha256 in `Formula/infrahouse-toolkit.rb`:
   ```bash
   curl -L https://github.com/infrahouse/infrahouse-toolkit/archive/refs/tags/<VERSION>.tar.gz | sha256sum
   ```
2. Update Python dependencies:
   ```bash
   brew update-python-resources Formula/infrahouse-toolkit.rb
   ```
3. Commit and push.