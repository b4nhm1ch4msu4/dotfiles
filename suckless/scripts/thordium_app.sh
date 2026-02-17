#!/usr/bin/env bash
case $1 in
"ai")
  thorium-browser --app="https://chatgpt.com/"
  ;;
"ytb")
  thorium-browser --app="https://www.youtube.com/"
  ;;
*)
  notify-send -u warning "Unknown option"
  ;;
esac
