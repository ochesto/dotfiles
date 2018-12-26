#!/bin/bash

# Profile file. Runs on login

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Environment variables
export P_TERMINAL="termite"
export S_TERMINAL="sakura"
export EDITOR="vim"


# Enable touchscreen in firefox
export MOZ_USE_XINPUT2=1

