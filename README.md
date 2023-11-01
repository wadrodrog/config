# Config Files

This repository contains my personal config files: dotfiles, software
settings and docs.

It may be not very nice as I'm not very experienced user, but feedback is
appreciated.

## Auto restore

`restore.sh` script automatically restores all symlinks.
It will remove all original config files and replace with files in repo.
It is assumed original config files are default or don't exist.

- `~/.config/fish/config.fish` → `./fish/config.fish`
- `~/.config/fish/fish_plugins` → `./fish/fish_plugins`
- `~/.config/nvim` → `./nvim`
- `~/.mozilla/firefox/*-release/chrome/userChrome.css` → `./firefox.css`
