#!/bin/bash

ZSH_COMPLETION_URL="git@github.com:zsh-users/zsh-completions.git"
ZSH_FOLDER="./zsh/.zsh"

git clone "$ZSH_COMPLETION_URL" "$ZSH_FOLDER"/zsh-completions
