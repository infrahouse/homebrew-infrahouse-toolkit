# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## First Steps

**Your first tool call in this repository MUST be reading .claude/CODING_STANDARD.md.
Do not read any other files, search, or take any actions until you have read it.**
This contains InfraHouse's comprehensive coding standards for Terraform, Python, and general formatting rules.

## Repository Overview

This is a **Homebrew tap** that distributes the `infrahouse-toolkit` Python package via Homebrew. 
The tap contains a single formula (`Formula/infrahouse-toolkit.rb`) that installs infrahouse-toolkit into
an isolated Python virtualenv with all its dependencies.

## Key Commands

```bash
# Test the formula locally (builds from source and runs the test block)
brew test-bot --only-formulae

# Validate formula Ruby syntax
brew test-bot --only-tap-syntax

# Run the installed formula's test
brew test infrahouse-toolkit

# Update Python dependency versions after changing the toolkit version
brew update-python-resources Formula/infrahouse-toolkit.rb
```

## Version Update Procedure

To release a new version of infrahouse-toolkit:

1. Update the `url` tarball version and `sha256` in `Formula/infrahouse-toolkit.rb`
   ```bash
   curl -L https://github.com/infrahouse/infrahouse-toolkit/archive/refs/tags/<VERSION>.tar.gz | sha256sum
   ```
2. Update Python resource dependencies:
   ```bash
   brew update-python-resources Formula/infrahouse-toolkit.rb
   ```
3. Commit and push

## Formula Structure

The formula (`Formula/infrahouse-toolkit.rb`) uses Homebrew's `Language::Python::Virtualenv` mixin:
- **System deps**: `python@3.12`, `rust` (for cryptography), `libsodium` (for PyNaCl)
- **Python resources**: ~48 pinned Python packages declared as Homebrew `resource` blocks
- **Install**: `virtualenv_install_with_resources` (single-line install method)
- **Test**: Runs `ih-ec2 --version` to verify the installation works

## CI/CD

- **tests.yml**: Runs `brew test-bot` on Ubuntu 22.04 and macOS 13 for every push/PR
- **publish.yml**: Publishes bottles when a PR is labeled `pr-pull`
- **vuln-scanner-pr.yml**: Runs Google OSV-Scanner on PRs (managed by Terraform in github-control)

## Formatting Rules

- Maximum line length: 120 characters (URLs excepted)
- All files must end with a newline
