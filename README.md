# dotfiles

My dotfiles managed by chezmoi. Currently only works for macOS.

## Installation

Step 1: Install [homebrew](https://brew.sh/).

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Step 2: Install and login [1Password](https://1password.com/downloads), enable `Setting > Developer > Integrate with 1Password CLI`.

```bash
brew install --cask 1password
```

Step 3: Install chezmoi and initialize

```bash
brew install chezmoi
chezmoi init --apply billjh
```
