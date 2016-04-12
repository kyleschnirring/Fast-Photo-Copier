#!/bin/bash
echo "Would you like to run Fast Photo Copier? (type 'y' for yes or 'n' for no). Followed by [Enter]."
read answer
if [[ $answer = y ]]; then
  echo "Making File for Fast Photo Copier ..."
  sleep 2
    # Check if directory exists
  if [ -d "~/Desktop/fastphotocopies" ]; then
    # Control will enter here if $DIRECTORY exists.
    echo "File fastphotocopies already exists. No need to copy good bye."
    exit 1
  else
    mkdir ~/Desktop/fastphotocopies
  fi
    #start copying photos
  sleep 1
  echo "Copying Photos ..."
  echo -ne '#####                     (33%)\r'
  sleep 2
  echo -ne '#############             (66%)\r'
  cp -r ~/Pictures/Photos\ Library.photoslibrary/Masters* ~/Desktop/fastphotocopies
  sleep 3
  echo -ne '#######################   (100%)\r'
  echo -ne '\n'
  echo "Done"
else
  echo "Ok goodbye."
  exit
fi
