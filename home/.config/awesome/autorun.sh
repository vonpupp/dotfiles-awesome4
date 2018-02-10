#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run play-with-mpv
run pidgin
run discord
run synapse
run telegram-desktop
run dropbox
