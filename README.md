# Config Files

This repository contains all my personal config files. These include dotfiles, software settings and docs.

It may be not very nice as I'm not very experienced user, but feedback is appreciated.

`restore.sh` script automatically restores all symlinks.
It will remove all original config files and replace with files in repo.
It is assumed original config files are default or don't exist.

- `~/.zshrc` → `./zshrc`
- `~/.p10k.zsh` → `./p10k.zsh`
- `~/.config/neofetch/config.conf` → `./neofetch.cfg`
- `~/.mozilla/firefox/*-release/chrome/userChrome.css` → `./firefox.css`
