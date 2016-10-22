#!/bin/bash

REPOS_TO_WATCH="repos-to-watch.txt"

function add_repo()
{
  # To do: Check that this is a valid repo
  if [ $1 ]; then
    echo $1 >> $REPOS_TO_WATCH
  fi
}

function get_info_from_repos()
{
  while read p; do
    echo $p
  done <$REPOS_TO_WATCH
}

case $1 in
  (add)
    add_repo "$2"
    exit 1
    ;;
  (watch)
    get_info_from_repos
    exit 1
    ;;
  (*)
    echo "run \`add\` or \`watch\`"
    exit 1

    ;;
esac
