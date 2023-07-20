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

DIR_ZSH="$HOME"
SYM_ZSH=".zshrc"
TRG_ZSH="zshrc"

DIR_P10K="$HOME"
SYM_P10K=".p10k.zsh"
TRG_P10K="p10k.zsh"

DIR_NEOFETCH="$HOME/.config/neofetch"
SYM_NEOFETCH="config.conf"
TRG_NEOFETCH="neofetch.conf"


# Replace files

replace $DIR_ZSH $TRG_ZSH $SYM_ZSH
replace $DIR_P10K $TRG_P10K $SYM_P10K
replace $DIR_NEOFETCH $TRG_NEOFETCH $SYM_NEOFETCH
