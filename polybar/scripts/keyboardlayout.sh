#!/bin/bash
layout=$(setxkbmap -query | grep layout | awk '{print $2}' | cut -d',' -f1)
current=$(xkb-switch)  # or use a similar command that gives current layout

case "$current" in
  us) echo " English" ;;
  ru) echo " Russian" ;;
  *) echo "$current" ;;
esac

