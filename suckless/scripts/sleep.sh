#!/usr/bin/env bash
betterlockscreen -l dim &
[[ -n "$1" ]] && sleep "$1"
systemctl suspend
