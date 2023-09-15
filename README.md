# dotfiles

## requirements

- homebrew
- chezmoi
- 1password-cli

## setup

### macOS

```
brew install chezmoi
brew install 1password-cli
eval $(op signin)
chezmoi init --apply dot96gal
```

### vscode devcontainer

```
# settings.json
{
  "dotfiles.repository": "dot96gal/dotfiles",
  "dotfiles.targetPath": "~/dotfiles",
  "dotfiles.installCommand": "install.sh",
}
```

