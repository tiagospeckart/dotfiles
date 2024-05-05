#!/usr/bin/env bash

set -e

if [ -e .stow-debian ]
then
    sudo apt-get install stow
    exit 0;
fi


