#!/bin/bash
for i in */ ; do
  :
  if [ -f ./$i/`basename "$0"` ]; then
    read -p "Do $i? [yn]" answer
    if [[ $answer = y ]] ; then
      echo
      echo in $i \"`basename "$0"`\" script
      echo
      cd $i
      ./`basename "$0"`
      cd ../
    fi
  fi
done
