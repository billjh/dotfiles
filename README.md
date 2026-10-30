# dotfiles

My dotfiles managed by [mise](https://mise.jdx.dev/). Currently only works for Apple Silicon macOS.

## Installation

Step 1: Sign in to the App Store, so bootstrap can install App Store apps.

Step 2: Install mise and bootstrap. mise asks for sudo once to create `/opt/homebrew`.

```bash
curl -fsSL https://mise.run | sh
~/.local/bin/mise bootstrap --adopt billjh/dotfiles
```

## Update

Pull and apply config changes. This also upgrades outdated packages and mise tools.

```bash
mup
```

## Alongside Homebrew

Homebrew isn't needed, since mise installs formulae and casks into `/opt/homebrew` itself. Where Homebrew is installed too, both use that prefix:

- Formulae are shared: either tool can upgrade or uninstall what the other installed.
- Casks stay with whichever tool installed them. To hand one to mise, run `brew uninstall --cask <name>`, then `mup`.
- `brew doctor` warns that casks mise installed have no valid metadata. Ignore it: the `brew reinstall --cask --force` it suggests hands the cask back to Homebrew.
- Don't run `mise bootstrap packages prune`: it uninstalls every formula this config doesn't declare, including Homebrew's.
