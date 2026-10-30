# dotfiles

My dotfiles managed by mise. Currently only works for Apple Silicon macOS.

## Installation

Step 1: Install [homebrew](https://brew.sh/) and add it to `~/.zprofile`.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# From the "Next steps" printed by the Homebrew installer
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Step 2: Sign in to the App Store, so the Brewfile can install App Store apps.

Step 3: Install mise and bootstrap.

```bash
curl -fsSL https://mise.run | sh
~/.local/bin/mise bootstrap --adopt billjh/dotfiles
```

## Update

Pull and apply config changes. This also upgrades outdated Brewfile packages and mise tools.

```bash
mup
```
