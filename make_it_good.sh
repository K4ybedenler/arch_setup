#!/bin/bash

HOME_DIR="$HOME"
LOCAL_CONFIG="$HOME/.config"
ZSH_DIR="$LOCAL_CONFIG/zsh"

# nvim config
NVIM_CONFIG="nvim"

cp -r "$NVIM_CONFIG" "$LOCAL_CONFIG"

# zsh config
ZSH_CONFIG=".zshrc"
P10K_CONFIG=".p10k.zsh"

mkdir "$ZSH_DIR"
mkdir "$ZSH_DIR/test"
cp "$P10K_CONFIG" "$ZSH_DIR"
cp "$ZSH_CONFIG" "$HOME_DIR"
