#!/bin/bash
. ./backup.conf

# lock file
lockfile=.LOCKFILE

if [ ! -f $lockfile ]; then
  echo "Creating lock ..."
  touch $lockfile
  IFS=',' read -r -a inputs <<< "$INPUTS"

  for element in "${inputs[@]}"
  do
     if [[ ! -d $element ]]
     then
          echo "The input path ${element} is not a directory."
          exit 1
     fi

     echo "Running backup for input: ${element}"
     backupSubpath=$(basename "${element}")
     finalPath="${OUTPUT}/${backupSubpath}"
     hb log backup -c ${finalPath} ${element} ${DEDUPLICATE_MEMORY}
     hb log retain -c ${finalPath} ${RETAIN} -x3m
     hb log selftest -c ${finalPath} -v4 --inc 1d/30d
  done
  echo "Removing lock ..."
  rm $lockfile
else
  echo "Another instance is already running ... "
fi
echo "### DONE ###"
