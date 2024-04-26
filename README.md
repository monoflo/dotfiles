# dotfiles

This repo contains my dotfiles, which I manage using [chezmoi][chezmoi].

## Installation

```shell
export GITHUB_USERNAME=monoflo
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

[chezmoi]: https://chezmoi.io
