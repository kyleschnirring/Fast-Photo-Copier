#!/bin/bash
echo "Would you like to run Fast Photo Copier? (type 'y' for yes or 'n' for no). Followed by [Enter]."
read answer
if [[ $answer = y ]]; then
  #statements
  echo "Making File for Fast Photo Copier ..."
  sleep 2
    # Check if directory exists
  if [ -d "~/Desktop/fastphotocopies" ]; then
    # Control will enter here if $DIRECTORY exists.
    echo "File fastphotocopies already exists. No need to copy good bye."
  else
    mkdir ~/Desktop/fastphotocopies
  fi
    #start copying photos
  sleep 1
  echo "Copying Photos ..."
  cp -r ~/Pictures/Photos\ Library.photoslibrary/Masters* ~/Desktop/fastphotocopies
  sleep 3
  echo "Done"
else
  echo "Ok goodbye."
fi
