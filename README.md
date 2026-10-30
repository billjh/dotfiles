# dotfiles

My dotfiles managed by mise. Currently only works for Apple Silicon macOS.

## Installation

Step 1: Install [homebrew](https://brew.sh/), then run the commands it prints under "Next steps".

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Step 2: Sign in to the App Store, so the Brewfile can install App Store apps.

Step 3: Install mise and bootstrap.

```bash
curl -fsSL https://mise.run | sh
~/.local/bin/mise bootstrap --adopt billjh/dotfiles
```

## Machine-specific config

Every module in `conf.d/` other than `base` is git-ignored. To add setup for one machine only, create `conf.d/<name>/mise.toml` with its own `Brewfile` and dotfile sources next to it.

## Runbook

Preview what a bootstrap would change, or show the state of everything it manages.

```bash
mise bootstrap --dry-run
mise bootstrap status
```

Pull and apply config changes. This also upgrades outdated Brewfile packages.

```bash
miseup
```
