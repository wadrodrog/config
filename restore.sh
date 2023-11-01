#!/bin/bash

# Replacer
# Make dir, remove original file and create symlink

replace() {
    # Arg $1: DIR
    # Arg $2: TRG
    # Arg $3: SYM
    mkdir -p $1
    rm -f $1/$3
    ln -s $PWD/$2 $1/$3
}


# Paths Variables
# DIR - original directory, SYM - symlink (config place), TRG - target (this repo)

DIR_FISH="$HOME/.config/fish"
SYM_FISH="config.fish"
TRG_FISH="fish/config.fish"

SYM_FISH_PLUGINS="fish_plugins"
TRG_FISH_PLUGINS="fish/fish_plugins"

DIR_FIREFOX="$HOME/.mozilla/firefox/*-release/chrome"
SYM_FIREFOX="userChrome.css"
TRG_FIREFOX="firefox.css"


# Replace files

replace $DIR_FISH $TRG_FISH $SYM_FISH
replace $DIR_FISH $TRG_FISH_PLUGINS $SYM_FISH_PLUGINS
replace $DIR_FIREFOX $TRG_FIREFOX $SYM_FIREFOX
