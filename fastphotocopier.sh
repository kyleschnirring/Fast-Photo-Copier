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
  cp -r ~/Pictures/Photos\ Library.photoslibrary/Masters* ~/Desktop/fastphotocopies
  sleep 1
  echo "Copying Photos ..."
  echo -ne '###                       (11%)\r'
  sleep 2
  echo -ne '#####                     (20%)\r'
  sleep 2
  echo -ne '#####                     (26%)\r'
  sleep 3
  echo -ne '#######                   (33%)\r'
  sleep 3
  echo -ne '#######                   (39%)\r'
  sleep 2
  echo -ne '#########                 (44%)\r'
  sleep 3
  echo -ne '#########                 (48%)\r'
  sleep 2
  echo -ne '###########               (56%)\r'
  sleep 3
  echo -ne '#############             (60%)\r'
  sleep 2
  echo -ne '#############             (67%)\r'
  sleep 3
  echo -ne '###############           (74%)\r'
  sleep 2
  echo -ne '#################         (81%)\r'
  sleep 3
  echo -ne '#################         (88%)\r'
  sleep 2
  echo -ne '###################       (93%)\r'
  sleep 3
  echo -ne '###################       (97%)\r'
  sleep 2
  echo -ne '####################      (99%)\r'
  sleep 3
  echo -ne '#######################   (100%)\r'
  echo -ne '\n'
  echo "Done"
else
  echo "Ok goodbye."
  exit
fi
