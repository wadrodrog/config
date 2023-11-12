#!/bin/bash

# Make dir, remove original file and create symlink
# $1: DIR - Directory where the original file is located
# $2: TRG - File from this repo
# $3: SYM - Symlink name which is the same as original config file


replace() {
    mkdir -p "$1"
    rm -f "$1/$3"
    ln -s "$PWD/$2" "$1/$3"
}


DIR_FISH="$HOME/.config/fish"
SYM_FISH="config.fish"
TRG_FISH="fish/config.fish"

SYM_FISH_PLUGINS="fish_plugins"
TRG_FISH_PLUGINS="fish/fish_plugins"

DIR_NVIM="$HOME/.config"
SYM_NVIM="nvim"
TRG_NVIM="nvim"

DIR_FIREFOX="$HOME/.mozilla/firefox/*-release/chrome"
SYM_FIREFOX="userChrome.css"
TRG_FIREFOX="firefox.css"


replace "$DIR_FISH" "$TRG_FISH" "$SYM_FISH"
replace "$DIR_FISH" "$TRG_FISH_PLUGINS" "$SYM_FISH_PLUGINS"
replace "$DIR_NVIM" "$TRG_NVIM $SYM_NVIM"
replace "$DIR_FIREFOX" "$TRG_FIREFOX" "$SYM_FIREFOX"
