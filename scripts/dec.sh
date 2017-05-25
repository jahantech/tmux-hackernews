#!/usr/bin/env bash

# get current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

offset=$(tmux show -gqv @hackernews-offset)

if [ -z $offset ]; then
  tmux set -g @hackernews-offset '29'
  offset=29
  exit
fi

offset=$(($offset-1))

tmux set -g @hackernews-offset $offset
