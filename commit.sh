#!/bin/bash
declare -a conventional_commits
# https://www.conventionalcommits.org/en/v1.0.0/
conventional_commits=(fix feat refactor build chore ci docs style refactor perf test "BREAKING CHANGE!")

if [ $# -eq 0 ]
then
  echo "Error: no message specified.. aborting commit" && exit 1
else
  # optional
  git add .
  git status

  echo "Select commit type: "
  select message in "${conventional_commits[@]}"; do 
  case "$message" in
      "$message") break ;;    
    esac  
  done;

  git commit -m "$message: $@"
fi
