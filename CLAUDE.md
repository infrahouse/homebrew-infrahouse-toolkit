# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## First Steps

**Your first tool call in this repository MUST be reading .claude/CODING_STANDARD.md.
Do not read any other files, search, or take any actions until you have read it.**
This contains InfraHouse's comprehensive coding standards for Terraform, Python, and general formatting rules.

## Repository Overview

This is InfraHouse's **Homebrew tap**, `infrahouse/tap` (the repository `infrahouse/homebrew-tap`, formerly
`infrahouse/homebrew-infrahouse-toolkit`). Users install with `brew install infrahouse/tap/infrahouse-toolkit`.

It has one formula, `Formula/infrahouse-toolkit.rb`, a **binary formula**: it downloads
`infrahouse-toolkit-<version>-macos-arm64.tar.gz` from the toolkit's GitHub release `v<version>`, unpacks it into
`libexec` and links `libexec/bin/ih-*` into `bin`. Its test checks `ih-ec2 --version` against the formula's version
and imports the native modules (`nacl.bindings`, `cryptography.hazmat.bindings._rust`) with the bundled interpreter.

- **The tarball** is built and smoke-tested by the toolkit's CI (`packaging/build-macos.sh`; see the "macOS tarball"
  section of the toolkit's `packaging/README.md`): a python-build-standalone interpreter, the toolkit's
  `requirements.lock` and the toolkit wheel, with relocatable `ih-*` scripts. It is the same build as the toolkit's
  standalone .deb.
- **arm64 macOS 13 and later only** (`depends_on arch: :arm64`, `depends_on :macos`). 13.0 is the tarball's
  `MACOS_FLOOR`, the first macOS with `realpath(1)`, which the scripts' header needs.
- **No dependencies, no `resource` blocks, no bottles.** The formula builds nothing, so there is nothing to bottle.

## Updating the Formula for a New Release

Until the toolkit's release opens this pull request itself (IH-190), it is done by hand:

1. Download the release's tarball and `.sha256`, and check one against the other:

   ```bash
   gh release download v<version> --repo infrahouse/infrahouse-toolkit \
       --pattern 'infrahouse-toolkit-<version>-macos-arm64.tar.gz*'
   ```

   ```bash
   shasum -a 256 -c infrahouse-toolkit-<version>-macos-arm64.tar.gz.sha256
   ```

2. In `Formula/infrahouse-toolkit.rb`, set `url` to the new release's tarball (the version appears twice: the tag
   `v<version>` and the file name) and `sha256` to the hash in its `.sha256`. Take the checksum from the release's
   `.sha256`, never from a local build: builds aren't byte-reproducible, and the formula must match what users
   download.
3. The formula has no `version` line: Homebrew infers the version from the file name (`2.68.1` from
   `infrahouse-toolkit-2.68.1-macos-arm64.tar.gz`). If it ever gets one, update it too. CI fails if `brew info` shows
   a version that isn't `<major>.<minor>.<patch>`.
4. Open a pull request. Its CI installs and tests the new formula.

## Testing

CI is the test: it installs the formula on a clean runner. Don't run `brew install`, `uninstall`, `tap`, `untap`,
`upgrade` or `reinstall` on a workstation to try a change; that Homebrew is in daily use.

## CI/CD

- **formula.yml** (check `infrahouse-toolkit formula`, required on `main`): on every pull request and push to `main`,
  on `macos-15`: `brew style` on the tap, `brew audit --strict --online`, `brew install`, `brew info`, `brew test`,
  `ih-ec2 --version` and `ih-puppet --help` through `$(brew --prefix)/bin`, `brew uninstall`. The tap's name comes
  from `setup-homebrew`, which derives it from `github.repository`. The check's name is in `infrahouse/github-control`
  (`repos.tf`, `required_status_checks`): rename the job in both places together.
- **vuln-scanner-pr.yml** (check `vulnerability-check / osv-scan`, required): OSV-Scanner on pull requests.
- Actions are pinned by commit sha, with the version in a comment.
- Nothing publishes: no bottles, no `pr-pull`.

## Files Managed by github-control

Terraform in `infrahouse/github-control` (`modules/plain-repo/repos-files.tf`) writes `renovate.json`,
`.github/workflows/vuln-scanner-pr.yml`, `.claude/CODING_STANDARD.md` and `.claude/instructions.md` here. Don't edit
them in this repository: the next apply puts them back. The tap's Renovate settings are in github-control's
`modules/plain-repo/files/overrides/homebrew-tap/renovate.json`, which turns off Renovate's `homebrew` manager: new
releases reach the formula through the toolkit's release, not Renovate.

## Formatting Rules

- Maximum line length: 120 characters (URLs excepted)
- All files must end with a newline
