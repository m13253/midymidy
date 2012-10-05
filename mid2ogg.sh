#!/bin/sh

[ -z "$1" ] || (timidity --output-stereo -OwS -Aa -a -C0 --reverb=G -o "$(basename "$1" .mid).wav" "$1" && ffmpeg -i "$(basename "$1" .mid).wav" -acodec vorbis -aq 1 -strict -2 "$(basename "$1" .mid).ogg" && rm "$(basename "$1" .mid).wav")

