#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# Avoid desktop lock on youtube
run caffeine

# Play youtube on MPV
run play-with-mpv

# Chat
run pidgin
run discord
run telegram-desktop

# Menu
run synapse

# Dropbox
run dropbox
